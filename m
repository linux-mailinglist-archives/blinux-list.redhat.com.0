Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E75645843D
	for <lists+blinux-list@lfdr.de>; Sun, 21 Nov 2021 16:02:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637506922;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/0xIByQcQLiTeM1TOl31nvhNQLFPUInCazKpUVrIulo=;
	b=UxXMiqUs1RF4rv+8lGnsZ+qgqamM8kReePPEO+lmL6RCqJ/I4NfEjiuQx3qG2J9wU6QUxI
	BWfaNF3kiU8fL2bhDS1XZjNuJ4E19MGLiyiQplHwDfSbA+d67wjNreelOS7v3GTvyP5Z4v
	2aPRIbkcw+xWI8T8ODX8iu2wo/V8l/E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-553-yk1uwKW_Pkm8OQj5PvEXIg-1; Sun, 21 Nov 2021 10:01:58 -0500
X-MC-Unique: yk1uwKW_Pkm8OQj5PvEXIg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6EF5A18125C0;
	Sun, 21 Nov 2021 15:01:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7882757CB9;
	Sun, 21 Nov 2021 15:01:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D41FA4A702;
	Sun, 21 Nov 2021 15:01:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ALF1bM5005260 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 21 Nov 2021 10:01:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2DB1B1121318; Sun, 21 Nov 2021 15:01:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2875F1121315
	for <blinux-list@redhat.com>; Sun, 21 Nov 2021 15:01:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 621B01066558
	for <blinux-list@redhat.com>; Sun, 21 Nov 2021 15:01:34 +0000 (UTC)
Received: from frontmx.svk.fi (79-134-96-138.cust.suomicom.net
	[79.134.96.138]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-53-aGWf05VwOnyBLBqzpgYQ-w-1; Sun, 21 Nov 2021 10:01:31 -0500
X-MC-Unique: aGWf05VwOnyBLBqzpgYQ-w-1
Received: from frontmx.svk.fi (localhost.localdomain [127.0.0.1])
	by frontmx.svk.fi (Proxmox) with ESMTP id D25F81C12C1
	for <blinux-list@redhat.com>; Sun, 21 Nov 2021 17:01:28 +0200 (EET)
Received: from smtps.svk.fi (heppa.svk.fi [192.168.10.4])
	by frontmx.svk.fi (Proxmox) with ESMTPS id C764A1C114C
	for <blinux-list@redhat.com>; Sun, 21 Nov 2021 17:01:28 +0200 (EET)
MIME-Version: 1.0
Date: Sun, 21 Nov 2021 17:01:28 +0200
To: blinux-list@redhat.com
Subject: Re: Ideal temperature
In-Reply-To: <2436cb02-c2d8-15f1-50f8-012a781ba1ec@seznam.cz>
References: <fe3a75a0-6db8-6f92-8859-a009326e9678@seznam.cz>
	<daa7b60aa84f6ee9af1210b4db6b34e7@ijn2.net>
	<2436cb02-c2d8-15f1-50f8-012a781ba1ec@seznam.cz>
Message-ID: <4429c5d938f27731442bddc9fec7defa@ijn2.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

On 2021-11-21 09:14, Linux for blind general discussion wrote:
> Hello,
> 
> and what about turning off and on the cooling? What about writing
> script to automatically turn on and off the cooling when is needed or

My Raspberries run UEFI which takes care of all this. The only
requirement is to use such a fan which is pwm controllable. Such fan
has three leads. One for supply current, one for ground and the third
for control. There is no need for any scripting in this case.

> some script to turn on and off the cooling by key binding or command?
> Is it possible? I have Monitor toggle script to turn off and on the
> screen. Is it possible to do with cooling?

If you don't use UEFI but vanilla uboot then you need to take care
of turning the aforementioned controllable fan on and off using one
of the GPIO's. If you are running Raspberry OS it should have all
the required libraries, bindings, scripts, etc. already. IMO the
GPIO Raspberry OS uses by default is not the best choice since if
memory serves correctly it uses one of the serial ports for control.

If you are not using a fan which has a control lead then you would
need to hack together such a circuit which turns on your fan power
line. You can't power normal fan directly from GPIO pins. First,
voltage level on GPIO pins is 3.3V. Second, the GPIOs aren't able to
source enough current to power a normal fan. If you connect normal
fan directly to GPIO pins you'd blow the corresponding SoC gates.

Regards,
Birdie

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

