Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2DB4DAE42
	for <lists+blinux-list@lfdr.de>; Wed, 16 Mar 2022 11:30:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647426617;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JF5w0ZHl5psDg6wh3/7fmx0nTvnTZRhwvAs5tU334l0=;
	b=FlzaUyRhOLH9aZnOJxrvdD8jk91X/sRPg2RyUdOFf5vyEt2QYKtr0kVZ8SuLX9ZJ2/BoO0
	dITVBmUUpZ9oROaJv1y96BeOf4kNLyTzCElfhffF36qP8ArD+FAU6kZc/jWJ9BpgZ6OzOl
	MumRtOaPPS6FhK8m4JgKzA+lJb8VBdw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-199-j-wXpT4UMlWlShyghZdUTw-1; Wed, 16 Mar 2022 06:30:14 -0400
X-MC-Unique: j-wXpT4UMlWlShyghZdUTw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ABEAF29DD9A0;
	Wed, 16 Mar 2022 10:30:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 13FC1401472;
	Wed, 16 Mar 2022 10:30:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B045F1940345;
	Wed, 16 Mar 2022 10:30:11 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
References: <mailman.2260.1647423261.111210.blinux-list@redhat.com>
In-Reply-To: <mailman.2260.1647423261.111210.blinux-list@redhat.com>
Date: Wed, 16 Mar 2022 12:29:56 +0200
Subject: Re: How to use fluidsynth?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.2165.1647426611.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I might be wrong, but I don't think you can.

The noteon and noteoff commands are more for testing and demonstration, the
way to use fluidsynth is as a Midi device. You use a sequencer or hardware
midi controller to drive Fluidsynth.

If you wish to write your own midi files, I suggest you look into something
like midge or abc2midi. These programs allow you to write notes in text,
the latter using the ABC notation.
If you are not particularly attached to midi, you can also use sound
compilers like Csound, SuperCollider, or ChucK to accomplish the same thing
with far greater control.

Finally if you have a hardware midi controller, you can drive Fluidsynth
directly, but it's far more convenient to use a sequencer like Midish.

I should mention that I'm not very well versed in serious sound production,
although I've tinkered a bit. However, I know that there are others on this
list who do this sort of thing for a living, and they might give you a more
comprehensive and/or accurate answer.

Regards,

Rynhardt



On Wed, Mar 16, 2022 at 11:34 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> If I want to play two notes seperately such 60 an 62, how to input
> commands?
> I input
>
> noteon 0 60 127
> noteoff 0 60
> noteon 0 62 127
>
> it plays two notes Simultaneously.
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

