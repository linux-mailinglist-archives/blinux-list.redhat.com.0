Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD4247175D
	for <lists+blinux-list@lfdr.de>; Sun, 12 Dec 2021 01:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639267994;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uPHgo4qyYSETpWfuU8JhtyCUPI8RnbxWGgZ3SDg42v0=;
	b=JrPW8IZITnvI4fNYm2ONXdV6heQGQ6maJb83bP9DTVo3tR5MDQG8iwjhtNAeT2UItf2d9J
	D0ERwJwi+rTME5T1t9R3zpCx83caHb5Lf1WuaJqK7Urmu9TOEIr0RnqiDvVnvI6bJmpktM
	8xCfEcr74S3dVVVWqQ0w9x6E0sx7ZII=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-181-SzZTMXfeOA6V3xRph6EWrw-1; Sat, 11 Dec 2021 19:13:10 -0500
X-MC-Unique: SzZTMXfeOA6V3xRph6EWrw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 88C7B193F561;
	Sun, 12 Dec 2021 00:13:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0C0F5D6D7;
	Sun, 12 Dec 2021 00:12:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 989B94BB7C;
	Sun, 12 Dec 2021 00:12:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BC0CYDd010992 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 11 Dec 2021 19:12:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B3313401E26; Sun, 12 Dec 2021 00:12:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AEDC2401DB9
	for <blinux-list@redhat.com>; Sun, 12 Dec 2021 00:12:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8D63B85A5A8
	for <blinux-list@redhat.com>; Sun, 12 Dec 2021 00:12:34 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-571-WtpETyVRMBGzhFcXutDbgw-1; Sat, 11 Dec 2021 19:12:32 -0500
X-MC-Unique: WtpETyVRMBGzhFcXutDbgw-1
Received: by mail-qk1-f169.google.com with SMTP id t83so11113083qke.8
	for <blinux-list@redhat.com>; Sat, 11 Dec 2021 16:12:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ZmCYqJZY9zht+GMRgxjL7YwJQ+XADy/Zrmvs7FfQ/4g=;
	b=wYBmPdw8TgrvyaMFmxA6B3+89QHmvkM6HMSqhJdOQ+B1iNtlF5wHSQaWj1iY0tOkaM
	OLBO5jZDVX/1Ani7YufLe8vFKmc5ggRwfnEdu0xLNael4ErbPUhOFEHdkUrAYe0SHA+d
	T/q83PaW6ZlfyxXW/+J46wXIYWwMqMJNqVL3bRUoZSK9GaYlKzJ0bqNS07nq+NFhjcyT
	IYmhDsH+BZvA9Avau/NilAuDdTh+PJuU+k6BNj04uP6QnmeiVdNppO1Ru42//Yl2Lp+G
	pS7O20Kxez+qXbpyuCnB6RFo/MovFK3EPxidchjgOBmDCxOgtKSimR3loxfc8d3yVmn1
	HKfg==
X-Gm-Message-State: AOAM530fy0zRYWfFxmacfIzPnEd4H0RtTW2mFXQTemxIrZ0i52xR8ShC
	KftaX8aEuX2opfYOsQEncfd/WUqPuYdVvEoLclLUqAVP
X-Google-Smtp-Source: ABdhPJxFQSrBVNsTyJvfgYBkjANe+eK2WrTgkWaOomr7Lor3Qeqsfwb1XPG2Sa0TEvpAqfDIJKkYBJSteGj/Fof37SQ=
X-Received: by 2002:a37:a90a:: with SMTP id s10mr26559345qke.124.1639267951904;
	Sat, 11 Dec 2021 16:12:31 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Sat, 11 Dec 2021 16:12:31
	-0800 (PST)
Date: Sun, 12 Dec 2021 00:12:31 +0000
Message-ID: <CAO2sX33xFEVcratw7R8jfbHY5v7LtCGkHbj3u91fXWTdBsnp4w@mail.gmail.com>
Subject: Ignoring hard wrapping when doing copy and paste.
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so my text editing environment of choice is Nano running in the
Linux Console, and I'm constantly using the justify function to hard
wrap text because lines wider than the screen are difficult to work
with.

If I need to post something I wrote in nano online, but can't just
upload the .txt, I'll save, close nano, switch to tty1 where I usually
have Firefox running in a stripped down xserver, open the text file in
Firefox, and copy and paste into the text box.

>From my perspective, everything works fine, but I've gotten complaints
from sighted users about the extra line breaks from the hardwrapping
making text posted in this manner hard to read.

Is there a way to make Firefox ignore the hard wrapping when copying
text from a hardwrapped text file to a web form, or failing that, an
easy means of copying a hardwrapped text file to an unwrapped text
file?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

