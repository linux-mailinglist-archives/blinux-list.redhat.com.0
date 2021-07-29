Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A550C3DA78A
	for <lists+blinux-list@lfdr.de>; Thu, 29 Jul 2021 17:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627572364;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KYMqXxumJtsdLTgcfC5cRCfduv82lCCNveU0prLsimc=;
	b=eRVpoxhpyqqulKURUWG7kydDr7FhrmdBCyVV6H9yqLEU0wub+cQ5MQMrP27C+Ax+1SKcOC
	r5vc9EZkYD6Q7c+Ca+fhDrnWh4ovPZrKseTbzlkEopf2MF1xv/DiNt/1Wknfq+DSUI3/K0
	9OVa30PI3T7Z3V07dvivNtk4LlmpFAc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-3syGQDo4McqVLWEvoaA9vw-1; Thu, 29 Jul 2021 11:26:03 -0400
X-MC-Unique: 3syGQDo4McqVLWEvoaA9vw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7727A100E425;
	Thu, 29 Jul 2021 15:25:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E1AE60864;
	Thu, 29 Jul 2021 15:25:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 37747180BAB0;
	Thu, 29 Jul 2021 15:25:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16TFPbee004349 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 29 Jul 2021 11:25:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 97CC320A8DD8; Thu, 29 Jul 2021 15:25:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 93AB120A8DD7
	for <blinux-list@redhat.com>; Thu, 29 Jul 2021 15:25:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32515801E80
	for <blinux-list@redhat.com>; Thu, 29 Jul 2021 15:25:31 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-589-xwfjGihaNEG4fDNW62xEcQ-1; Thu, 29 Jul 2021 11:25:29 -0400
X-MC-Unique: xwfjGihaNEG4fDNW62xEcQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GbDqr3XWlz2mJl
	for <blinux-list@redhat.com>; Thu, 29 Jul 2021 11:25:28 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GbDqr2k0bzcbc; Thu, 29 Jul 2021 11:25:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GbDqr2Q0RzcbP
	for <blinux-list@redhat.com>; Thu, 29 Jul 2021 11:25:28 -0400 (EDT)
Date: Thu, 29 Jul 2021 11:25:28 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Help with rclone.
In-Reply-To: <CAO2sX32PZMWpWp_HdneZnML7kWLo2cAo=1TNVC95ns+UZLUQfA@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2107291123340.29786@panix1.panix.com>
References: <CAO2sX32PZMWpWp_HdneZnML7kWLo2cAo=1TNVC95ns+UZLUQfA@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Start nothing up unless you start it with tee and give each application
its own output file.  That'll not solve your problem with rclone, but may
help get you close to solving it.


On Wed, 28 Jul 2021, Linux for blind general discussion wrote:

> Okay, so a few days ago, I asked about cocmmand line clients for
> connecting to Google drive... I've since found the following tutorial
> for using rclone with Google drive:
>
> https://rclone.org/drive/
>
> But I'm running into issues with the authentication step of setting up
> a new remote. I copy the URL rclone gives me into Firefox(which also
> lead me to discovering the tee command for outputing both to stdout
> and a file at the same time so I can copy the URL by opening the
> output file in Firefox instead of switching back and forth between GUI
> and the console to copy it manually), and log-in to my google
> account... I get a success message in Firefox, but when I switch back
> to the console, rclone has terminated with an error about a token
> being signed by an unknown authority, and for some reason, tee doesn't
> right the error to the output file, so I can't easily copy it into
> this message.
>
> Any idea what went wrong?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

