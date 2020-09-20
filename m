Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 93D89271459
	for <lists+blinux-list@lfdr.de>; Sun, 20 Sep 2020 14:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600606321;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3Cg5Ob/HWswO6OOV538BQ1cQOHpSivDkjEKPVKbVeFQ=;
	b=fNlw3bsyyl9ODUZ+m6rkHdXAEKA6L1FCY+J/Acn1Cvo6iLa3ADwMG9aN1jOc6If+gHj6MR
	0RCazl0EQMCBINqhMqIh1/pxAhDyFStNIqx7L/5DreNSvmfMwdJn/qRXkshnbzQn1dsVmU
	0ARfMYPSysBljMC1BeSflQX3tm6t9zA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-56-85rjoWvFOn2i8BQvNXRhaw-1; Sun, 20 Sep 2020 08:51:58 -0400
X-MC-Unique: 85rjoWvFOn2i8BQvNXRhaw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E9B4C109106A;
	Sun, 20 Sep 2020 12:51:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E26473670;
	Sun, 20 Sep 2020 12:51:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D1164183D041;
	Sun, 20 Sep 2020 12:51:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08KCpipa027511 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 20 Sep 2020 08:51:44 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 38FDB100B167; Sun, 20 Sep 2020 12:51:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 31C711014514
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 12:51:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BB6DF101A53F
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 12:51:41 +0000 (UTC)
Received: from gateway11.unifiedlayer.com (gateway11.unifiedlayer.com
	[74.220.216.201]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-402-AL7bEAYJNzq1MNVjOfOOHQ-1; Sun, 20 Sep 2020 08:51:39 -0400
X-MC-Unique: AL7bEAYJNzq1MNVjOfOOHQ-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway11.unifiedlayer.com (Postfix) with ESMTP id A729B2009ABBD
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 07:30:48 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id JyUSkzvZj7MgvJyUSkHOtU; Sun, 20 Sep 2020 07:30:48 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:38837 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1kJyUS-003PO3-Ar
	for blinux-list@redhat.com; Sun, 20 Sep 2020 07:30:48 -0500
Date: Sun, 20 Sep 2020 07:30:46 -0500
To: blinux-list@redhat.com
Subject: Re: ebook-speaker/UTF-8 long files
Message-ID: <20200920073046.1040b490@bigbox.attlocal.net>
In-Reply-To: <addab503-37a4-eb73-3099-29e5dcb713df@gmail.com>
References: <addab503-37a4-eb73-3099-29e5dcb713df@gmail.com>
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
X-Exim-ID: 1kJyUS-003PO3-Ar
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:38837
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  You say "It tells me to wait", but it's hard to tell
whether it's "ebook-converr" or "ebook-speaker" that's giving the
error.  So it's hard to tell whether it's source lines in the
original ebook that are giving trouble (in which case it would help
to know which type of ebook:  EPUB, Mobi, etc), or the .txt output.
If it's the former, it sounds like an issue with "ebook-converr"
which I'm not sure I know how to deal with other than to try a
different program.  If it's successfully producing .txt files but
they have long lines that choke "ebook-speaker", you might be able to
use `fmt` or `fold` to re-wrap the lines in the .txt so that they're
shorter and hopefully don't choke "ebook-speaker".

-tim

On September 20, 2020, Linux for blind general discussion wrote:
> So I just ran into this and was wondering if anyone else has. I've 
> converted ebooks to .txt with ebook-converr and wanted to run them
> by ebook-speaker. It tells me to wait since it's a UTF-8 file with
> long phrases and give sme numbers, then does....precisely nothing,
> boots me back to the terminal with a bell sound...
> 
> Any ideas?
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

