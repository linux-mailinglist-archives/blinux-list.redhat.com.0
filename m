Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D11479EC2
	for <lists+blinux-list@lfdr.de>; Sun, 19 Dec 2021 02:54:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639878888;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iYGUCjHvrVOQ+NOemwaqD2UTSdx+Arogjod2MoPycEU=;
	b=XmY0ZU5at2OncvtwMgoTspwdJeTcHiS5Nh31kp6juSds+8Rn53bipgpdqDiR2LP7+S9+1/
	yI6DeS/Z+Tib+UCpho0xpGwfG8hIlqMcoKqZfTbrv0eFtnWUcdOd+1A5pmJAbOh7POVrMb
	o5rub5BRgep5AxiBNIYaxOz/BbnG3ZM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-543-Lrb3PgowMSu0Q8kpmVv2Qg-1; Sat, 18 Dec 2021 20:54:45 -0500
X-MC-Unique: Lrb3PgowMSu0Q8kpmVv2Qg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F0427104ECE7;
	Sun, 19 Dec 2021 01:54:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 16D3110589B3;
	Sun, 19 Dec 2021 01:54:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 02E644BB7B;
	Sun, 19 Dec 2021 01:54:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BJ1s8NB015856 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Dec 2021 20:54:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id ACA8840CFD27; Sun, 19 Dec 2021 01:54:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A53BB40CFD02
	for <blinux-list@redhat.com>; Sun, 19 Dec 2021 01:54:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8C86C811E76
	for <blinux-list@redhat.com>; Sun, 19 Dec 2021 01:54:08 +0000 (UTC)
Received: from gateway6.unifiedlayer.com (gateway6.unifiedlayer.com
	[74.220.210.252]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-332-1ZBhTYsoM1uC9HwZGozxRg-1; Sat, 18 Dec 2021 20:54:06 -0500
X-MC-Unique: 1ZBhTYsoM1uC9HwZGozxRg-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway6.unifiedlayer.com (Postfix) with ESMTP id 3BEE3200A22CA
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 19:30:52 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id yl2Jml8oJv5IUyl2JmGDuA; Sat, 18 Dec 2021 19:30:52 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:33180 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1myl2J-004NXn-MH
	for blinux-list@redhat.com; Sat, 18 Dec 2021 19:30:51 -0600
Date: Sat, 18 Dec 2021 19:30:50 -0600
To: blinux-list@redhat.com
Subject: Re: Webmail vs client question
Message-ID: <20211218193050.54157e69@bigbox.attlocal.net>
In-Reply-To: <b320bf55-86cf-a1ab-8eed-7a42963f9c7e@gmail.com>
References: <b320bf55-86cf-a1ab-8eed-7a42963f9c7e@gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1myl2J-004NXn-MH
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:33180
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
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  I don't know which file-system you're running, but if your
home directory is on ZFS, you can enable transparent compression.  I
have my mail/cache directory as a specific ZFS dataset and get
roughly 60% compression out of my mostly-plain-text mail-cache files:

  $ zfs get -H -ovalue compressratio zpool/usr/home/tim/Mail
  1.31x

I believe that works out to around 75% compression because mail
(whether mbox or maildir or MH) usually has a lot of easy-to-compress
data in it.

Alternatively, you might be able to tell your MUA (whether Claws or
Thunderbird or Seamonkey or mutt/neomutt) to interact directly with
files on the server (usually via IMAP; it's more annoying to do via
POP3 because it only has the idea of a mailbox, not a hierarchy of
folders).

Most still cache things locally so you'll have some local disk-space
consumption, but most should give you controls over how large that
grows (or you can enforce it by putting your mail-cache directory on
its own mount-point and giving it a limited size/quota)

-tim

On December 18, 2021, Linux for blind general discussion wrote:
> So this came to mind earlier, and I'm wondering if I can do
> anything about it, and it was prompted by an idea I had to save
> disk space.
> 
> 
> I've read up on the difference with POP3 vs IMAP, and I like how 
> Seamonkey/Thunderbird/Claws/etc handle mail in a much easier to
> read format than webmail interfaces.
> 
> But I'm wondering if there's a middle ground, if I can have a
> client that lets me access my mail, but doesn't clutter up my disk?
> I was told both POP3 and IMAP eat up disk space on a computer after
> all, and I'm both not sure how true that is, and wondering if I can
> do anything to mitigate that?
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

