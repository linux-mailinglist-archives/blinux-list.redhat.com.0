Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 5BEE723573F
	for <lists+blinux-list@lfdr.de>; Sun,  2 Aug 2020 15:54:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1596376485;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pvbSkx5AZph2zbM/LdrPH4Gq50nLjZxg3HmgmCbTJRI=;
	b=Cn9rw6t4ZCkQ0zJfg4TPIk8guwXDg4ZnmZVN4NlE6mMRHh7YtMGGmONJUGtl/DwYXF3NT3
	SPVBhiD3TcJK7/+NP9DCIwtbJnpvUFdWvZuzKzzX1C9vOby5+QvahpMg8SNO7wOHKH6jwh
	Z/IxCsyj9/5xuoqiK9eXtJb0eXK+AOQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-9uK13el-PyCt3-jZ_EV_rg-1; Sun, 02 Aug 2020 09:54:42 -0400
X-MC-Unique: 9uK13el-PyCt3-jZ_EV_rg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B18DD18C63C3;
	Sun,  2 Aug 2020 13:54:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8AEED87E1C;
	Sun,  2 Aug 2020 13:54:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8434C1809557;
	Sun,  2 Aug 2020 13:54:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 072DsPYW007179 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 2 Aug 2020 09:54:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9B82C2018296; Sun,  2 Aug 2020 13:54:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 824122026D67
	for <blinux-list@redhat.com>; Sun,  2 Aug 2020 13:54:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 87F7D8007B3
	for <blinux-list@redhat.com>; Sun,  2 Aug 2020 13:54:22 +0000 (UTC)
Received: from gateway1.unifiedlayer.com (gateway1.unifiedlayer.com
	[74.220.192.202]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-113-EXZXt2rfPEGnfrhgGYpPlg-1; Sun, 02 Aug 2020 09:54:20 -0400
X-MC-Unique: EXZXt2rfPEGnfrhgGYpPlg-1
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway1.unifiedlayer.com (Postfix) with ESMTP id 086B420095EE4
	for <blinux-list@redhat.com>; Sun,  2 Aug 2020 08:09:13 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id 2Djkk3EQHDhm02Djkk68DH; Sun, 02 Aug 2020 08:09:12 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:48104 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1k2Djk-003qdS-Ii
	for blinux-list@redhat.com; Sun, 02 Aug 2020 08:09:12 -0500
Date: Sun, 2 Aug 2020 08:09:10 -0500
To: blinux-list@redhat.com
Subject: Re: tips for using gnucash
Message-ID: <20200802080910.755ec1cd@bigbox.attlocal.net>
In-Reply-To: <CADj8Jxeftx5wEP7BBgW5rgr2=vhn2R==8EyBd+QZWN4-1G8Stg@mail.gmail.com>
References: <CADj8Jxeftx5wEP7BBgW5rgr2=vhn2R==8EyBd+QZWN4-1G8Stg@mail.gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1k2Djk-003qdS-Ii
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:48104
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  Though not much direct experience with GnuCash, I've been
tinkering a bit with "ledger" which does everything in plain-text
files and runs from the command-line (allowing it to integrate with
the whole host of Unix command-line tools).  There are a lot of
resources at

https://plaintextaccounting.org/

which describes a family of programs including "ledger", "hledger",
and "beancount" which all use the same format files.  There's also a
pretty responsive group over on Reddit (if that works for you) over
at

https://www.reddit.com/r/plaintextaccounting/

Sorry I can't be more helpful regarding GnuCash, but wanted to at
least put other options on the table for you if you hadn't stumbled
on them yet.

-tim


On August  2, 2020, Linux for blind general discussion wrote:
> So I'm wondering if anyone has played around with gnucash? It is for
> the most part accessible but I am having a hard time entering
> transactions.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

