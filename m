Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 994EB5F550C
	for <lists+blinux-list@lfdr.de>; Wed,  5 Oct 2022 15:11:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664975465;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gJ4RnpuoSCBDWYF3Vr2+WURB+trBULn5l1Y7CyDTVW8=;
	b=hSqbhqph8Ye8V4tQuSXFKVrqQO6fg0ZHqVOgyVgk2ks83OpU5/4IFrlVqIv1kGM+4lEuNV
	7Cxi1fZFYV0rvUcYfSYNIxWAeV4V3FEBzVeWIQ6qG0/PadYv7iEy6RClpytKQDnW9yE7Ji
	3pR3jWvQpboGiJCrkAy5bn1d7RsAFf8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-134-lWUnL-CfPQeLQlIjDGXk4Q-1; Wed, 05 Oct 2022 09:11:03 -0400
X-MC-Unique: lWUnL-CfPQeLQlIjDGXk4Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 942AA101A528;
	Wed,  5 Oct 2022 13:11:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2A869140EBF3;
	Wed,  5 Oct 2022 13:11:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B97B01947BAC;
	Wed,  5 Oct 2022 13:11:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Wed, 5 Oct 2022 06:02:35 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: mpv
In-Reply-To: <mailman.5499.1664962129.6081.blinux-list@redhat.com>
References: <mailman.5499.1664962129.6081.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.5561.1664975460.6078.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Jude: If you mean just hearing an audio or video-and-not any details, here 
is an alias which works here for 1 of my 4 sound-cards.
mpv1:    aliased to mpv --really-quiet --no-video --audio-device=alsa/plughw:CARD=AudioPCI,DEV=0
Back again live, I wish there were a way of setting up a hotkey to read an 
elapsed time.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

