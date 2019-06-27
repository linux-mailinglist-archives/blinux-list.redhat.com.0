Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 8350E58655
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jun 2019 17:52:37 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D9783308FF23;
	Thu, 27 Jun 2019 15:52:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 999221001B02;
	Thu, 27 Jun 2019 15:52:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 792421806B1A;
	Thu, 27 Jun 2019 15:52:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5RFnVjB025966 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jun 2019 11:49:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D100060C62; Thu, 27 Jun 2019 15:49:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx13.extmail.prod.ext.phx2.redhat.com
	[10.5.110.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C853060BE0
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 15:49:28 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
	[209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 909FC3082135
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 15:49:11 +0000 (UTC)
Received: by mail-ot1-f49.google.com with SMTP id n5so2795222otk.1
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 08:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=yMWiFBTbdI8kOlL5m8jCQHP/ADh5irE2RIIyr5pV9gM=;
	b=jxnVLeWPDGvuzhAbPebjvJBrCB7jWbxnCAYG/u8vmkmqEmnDdyU1sIZ/Lw8qbbo4L2
	VRnQcDIocOCX0bHaw+OUAbOU7MpyJKudQrpA8BO3SQkzYuhck9OTbAvtAD4UCMemk9KN
	UZTRh0xKs7IW/xPWaqg8jBYcDEpLEgjpjcOmuHF9ey68+1wrnZIrsNjzpR7pLMhkwIYc
	o1IepZ51aoilQDVnrvEbwX2VnROHsLXEHqpqQ9R+KicV3ee1RivltYolzlHh/dowYe8i
	HkvWMLNem5HwmDlVRQ/krpYilkYQyKkEbrLyX1FCsRPpB4I9fjXvsv9+192LaexZN86C
	w83Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=yMWiFBTbdI8kOlL5m8jCQHP/ADh5irE2RIIyr5pV9gM=;
	b=Z/BTTQZZBto39qxK6iG1nNARO/cRvMuIkFfqIqhpMWAKAVN3pLrrvSI2zde0Z2hxvn
	eR9FAyijKD/yV4VVw7+R4fiLEf5VQ9CUv08kAf2WvzIa7nlZLrdRQbD+5vaHlnKbbeI1
	qNjt/9/GBy9rExoE8iWubI9Hrmhtfl8tSFPEoRN7s7aLMNz0mwt+AIvPxHZ24agCfMu1
	M7ur/iw4A+krLKYzv+F6nXpQJaWRzeeJLUoFxMrKLcecpmKlNYEqMwUpZsx6qDJev+G3
	DZARVTWejvAwM3VibFYaKthXvoehsuA9kkGkuyU+y+RDQ7QFnruGyF4gqWrWOee5wNJc
	1UgA==
X-Gm-Message-State: APjAAAU4hLiSFqlpVEmBW6n0G9bfXTgCM8fYk7IodEq32JwB8PR/K6CP
	1dykrEZmsktd24AuX27JoomBnfOpvcxCyMy03dAPAQ==
X-Google-Smtp-Source: APXvYqzZUg43JlwDUYuwPIVIAiR0LapuXqtb3bu4IuLTMcxIRy3x9SwPuErTwhsKUgIol4tJbQXY1BWMX8gP7N23P4A=
X-Received: by 2002:a05:6830:2145:: with SMTP id
	r5mr4168863otd.54.1561650550960; 
	Thu, 27 Jun 2019 08:49:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:6ac9:0:0:0:0:0 with HTTP; Thu, 27 Jun 2019 08:49:10
	-0700 (PDT)
In-Reply-To: <alpine.DEB.2.11.1906271756180.75607@debian.work>
References: <20160420134111.2629abd1@bigbox.christie.dr>
	<20190627131054.GA3329@rednote.net>
	<alpine.DEB.2.11.1906271756180.75607@debian.work>
Date: Thu, 27 Jun 2019 15:49:10 +0000
Message-ID: <CAO2sX30n-GGUtBWGhSxBP=jt-_7da7kAFXdpZdComA2Tx5kZXg@mail.gmail.com>
Subject: Re: Using $PROMPT_COMMAND to beep depending on success/failure
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.42]);
	Thu, 27 Jun 2019 15:49:11 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.42]);
	Thu, 27 Jun 2019 15:49:11 +0000 (UTC) for IP:'209.85.210.49'
	DOMAIN:'mail-ot1-f49.google.com' HELO:'mail-ot1-f49.google.com'
	FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.109  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.49 mail-ot1-f49.google.com 209.85.210.49
	mail-ot1-f49.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.42
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]); Thu, 27 Jun 2019 15:52:36 +0000 (UTC)

Okay, I've installed beep and I've tried playing around with trying to
get it to play a tone for five seconds, but it's not producing any
sound.

I'm assuming the problem is with whatever it determines the default
playback device is, but I have no idea what to feed to the -e option
to specify a sound device.

Any idea what's going on?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
