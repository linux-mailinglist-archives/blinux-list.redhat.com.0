Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F8644F532
	for <lists+blinux-list@lfdr.de>; Sat, 13 Nov 2021 21:12:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636834373;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0hpZFl23RFIwEh7NgGWsE/jAMwThJOowz1/YMHrEkN4=;
	b=D7N7gc1erdJUXITf+g9J3v8vpw/3mmDx+VEE8XJkyY8Yg3126D0qnDpmDdhOAXGny1ZktL
	Pkik1wLNhNFs5kPASyDnM5czbVHFgpllsycwMJ2vIsHka19c0slDm4gbh9rhek5ZmZByDF
	Khtsfn1tRzitOA/v/SQdo7dBuZkkpTc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-593-a2T5C6XmNfiSHkL3BW5ocw-1; Sat, 13 Nov 2021 15:12:50 -0500
X-MC-Unique: a2T5C6XmNfiSHkL3BW5ocw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0E26A1006AA0;
	Sat, 13 Nov 2021 20:12:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BDDF11017CF2;
	Sat, 13 Nov 2021 20:12:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 11B284A703;
	Sat, 13 Nov 2021 20:12:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ADKCZQr021214 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 15:12:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9517E4010FF7; Sat, 13 Nov 2021 20:12:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8EC9B40CFD01
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 20:12:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6E2B685A5A8
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 20:12:35 +0000 (UTC)
Received: from gateway6.unifiedlayer.com (gateway6.unifiedlayer.com
	[69.89.27.122]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-556-EkQ5M12aOBGcoAFpchKLPA-1; Sat, 13 Nov 2021 15:12:33 -0500
X-MC-Unique: EkQ5M12aOBGcoAFpchKLPA-1
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway6.unifiedlayer.com (Postfix) with ESMTP id 3013820136D3C
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 14:12:31 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id lzO3mfpk9cfn8lzO3me0ef; Sat, 13 Nov 2021 14:12:31 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:52352 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1mlzO2-004O2W-Sr
	for blinux-list@redhat.com; Sat, 13 Nov 2021 14:12:30 -0600
Date: Sat, 13 Nov 2021 14:12:29 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
Message-ID: <20211113141229.10f2a440@bigbox.attlocal.net>
In-Reply-To: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
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
X-Exim-ID: 1mlzO2-004O2W-Sr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:52352
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

Tim here.  I addition to those already listed (Claws/Sylpheed,
Evolution, Mutt, and Alpine), one might try KMail in a GUI, though I
don't know how accessible it is.

If you use the command-line, you have

- the already-mentioned mutt/neomutt (powerful, but complex to
  configure, especially complex when it comes to multiple accounts)

- the already-mentioned Alpine (has configuration screens that let you
  twiddle most of the configuration knobs without needing to directly
  edit a config file.  It's not quite as powerful as mutt, but also
  easier to configure for the basic stuff)

- classic mail/mailx (I use this regularly for reading my system
  mailbox where cron-job results end up)

- s-nail (like classic mail/mailx but with access to IMAP & POP3)

- mh/nmh (more like command-line utilities for interacting with a
  local mail-store)

- aerc (a new TUI kid on the block, friendlier like Alpine)

- sup/alot backed by notmuch (fast, great at handling lots of email)

- m4e (an emacs mail client)

The linear nature of mail/mailx/s-nail/mh/nmh can make them work well
with a screen-reader, where you just have input and output without
having to do any sort of screen-review.

Hopefully those give you some options to explore and see what you
like.

-tim


On November 13, 2021, Linux for blind general discussion wrote:
> Hello friends,
> 
> I am wondering if there is another accessible email client that
> works seamlessly with linux? Currently I am using thunderbird. It
> is very accessible with linux. However, the fact that it brings so
> many firefox tabs which are not directly email related is annoying.
> I want an email client that is simple and purely email, no other
> features. Do you guys recommend a particularly simple yet
> accessible client?
> 
> Cheers,
> 
> Ibrahim
> 
> ,
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

