Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C2ED6660895
	for <lists+blinux-list@lfdr.de>; Fri,  6 Jan 2023 22:01:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1673038863;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+VQefrYNkBpot849SFn40MZXjh0FbWga+O2jvvtIgQo=;
	b=U8hogsE6yVcGZaItGSr4eAAGS5dndsbcTI3d4VXqErc9MNbZId7/CklsnZ0eqmUurEbi0/
	3wBe40ds1up6NiJVMwpEGM9Ng/fQrcIC8LXkDW0YXoR5jLMYGBHL/WOm8JHodCTgd5pzFd
	TaixBcbMuD8xo9lwvDOdJe1hsQAj6c8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-539-K23bREflOF-eXVLqJZHgxg-1; Fri, 06 Jan 2023 16:01:01 -0500
X-MC-Unique: K23bREflOF-eXVLqJZHgxg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 497BE803495;
	Fri,  6 Jan 2023 21:00:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 251F6C15BAD;
	Fri,  6 Jan 2023 21:00:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D26FF19459CC;
	Fri,  6 Jan 2023 21:00:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net E49CD14C16ED
Date: Fri, 6 Jan 2023 22:00:15 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Speech-dispatcher problem
References: <mailman.3123.1672954986.2515665.blinux-list@redhat.com>
 <mailman.3118.1672957260.2515662.blinux-list@redhat.com>
 <mailman.3461.1673029986.2515658.blinux-list@redhat.com>
 <mailman.3481.1673038231.2515669.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.3481.1673038231.2515669.blinux-list@redhat.com>
X-Spam-Status: No, score=-3.1 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
 autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on dalen.lamasti.net
Message-ID: <mailman.3529.1673038857.2515682.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

[Didier]

Thanks a lot!

> [Lars]
> > My problem may have to do with PipWire/Wireplumber. But I'm not able to debug the issue and find why the audio device cannot be opened.
> 
> Unfortunately I can't help then as I use Alsa and Pulse Audio, not PipeWire and
> do not know how these things are managed on Fedora...
> 
> Also in the distribution I maintain (Slint) PulseAudio is started only on demand
> (by applications that request it) not system wide and in case of Orca, alsa is
> set by default in /etc/speech-dispatcher/speehchd.conf as AudioOutputMethod
> (actually that's libao but which then use alsa as default driver, set in
> /etc/libao.conf so redirects the audio files to alsa). As this configuration
> differs probably a lot from the default one in Fedora I can't make useful tests,
> sorry.

I changed AudioOutputMethod "alsa", and all is working. Thank you!

Lars

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

