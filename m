Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0396027BA
	for <lists+blinux-list@lfdr.de>; Tue, 18 Oct 2022 10:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666083585;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=p7P4ZncnbL1WaABRGmRAXRBES1Q1SA7v54AdRdE+iMk=;
	b=RPulSVmq+UNhOJMuAizFmAdnTO6NZhqGnWhkRudneNYC/I67o8zN079bjXz3CNUpi3CIU0
	kd8hu6gcAyzFMDRYT3k/sBsbiE26tyHfTrQESLqgBsW0Vktw7+i5asTghnH5mKj97lyI2k
	ycFdLpn1h3jSl419TobMwkIkkRpHVY4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-6-STeQvLpxN-irJjbaP9iwvQ-1; Tue, 18 Oct 2022 04:59:42 -0400
X-MC-Unique: STeQvLpxN-irJjbaP9iwvQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B333F185A7A9;
	Tue, 18 Oct 2022 08:59:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BAB7A406103;
	Tue, 18 Oct 2022 08:59:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5717A19465A2;
	Tue, 18 Oct 2022 08:59:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.882.1666078921.3006.blinux-list@redhat.com>
References: <mailman.882.1666078921.3006.blinux-list@redhat.com>
Date: Tue, 18 Oct 2022 08:59:32 +0000
Subject: Re: Turning off screen in Linux
To: blinux-list@redhat.com
Message-ID: <mailman.826.1666083575.3004.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Unfortunately, it depends on the model of laptop.

If you're lucky, your model will have a keyboard shortcut that will
turn the screen off and leave it off until you press that key
combination again and it works independant of the OS that's running.

If you're unlucky, you'll have a model that has a screen off key
combination, but any key press is treated as a screen on command and
no amount of messing around with OS-level power management or display
settings will get the screen to stay off.

And if it's possible to fix the latter behavior, I'm pretty sure it
would require going into BIOS, and as far as I know, no vendor has
ever produced an accessible BIOS.

No idea if it was brand-wide policy at the time, if the brands in
question still exist, and if policy has changed on newer models if
they're still around, but I used to own a well-behaved ASUS netbook
and a poorly behaved Acer laptop(I bought the acer to replace the
ASUS, but it ended up being a major downgrade in most regards, in
addition to the Acer's bab behavior regarding the screen, it was
bulkier, had an SD card slot that left the card sticking out(leading
to at least one broken card when the laptop bumped against something,
the ASUS left the SD card flush with the slot's face), and instead of
full-sized arrow keys that used Fn to convert to PageUp/down and
Home/End, it had 6 half keys cramed into the space of 3 normal keys
that was awkward as heck to use with my thick, sausage link fingers).

Anyways, your best bet is to google turn monitor off [model name] to
find out what the display off key combo for your model is and see if
your laptop is well behaved. If you turn the display off and it stays
off as you start typing, congratulations, problem solved. If
everything you do cause the monitor to come back on, I'm not sure
there's anything you can do beyond impotently complaining to a vendor
who apparently doesn't comprehend that someone might want to use their
laptop while the monitor is turned off.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

