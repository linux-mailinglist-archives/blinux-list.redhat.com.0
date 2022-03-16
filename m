Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 046B24DB76C
	for <lists+blinux-list@lfdr.de>; Wed, 16 Mar 2022 18:38:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647452288;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Gh0vRDdEdF5/92BzF3W/QkL6w7GJwbw/XIPFJqkuI98=;
	b=WjesbzWDma2FZ21OsVUGGg7JA/YL6Hwg6cnKvfkDoq5v/mCF8Ap/+INMPjBrTlXQsko/nb
	3ofpp5SB/tDwJ0TKcrSNmrepYB2GsQozPjQ5SzRvUEKaZ4k9v/VtAhnfiuAgDqIcqlpriX
	LAu+9Fyt0gp5BdOYWQprcFi1nhFpTl0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-577-yPVFHt92NOq8r7ct05TLaA-1; Wed, 16 Mar 2022 13:38:06 -0400
X-MC-Unique: yPVFHt92NOq8r7ct05TLaA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EAD80899EC1;
	Wed, 16 Mar 2022 17:38:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D967A40D2825;
	Wed, 16 Mar 2022 17:38:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5CD7C1940356;
	Wed, 16 Mar 2022 17:38:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 16 Mar 2022 13:37:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: Linux music production workflows (was Re: How to use fluidsynth?)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2260.1647423261.111210.blinux-list@redhat.com>
 <mailman.2165.1647426611.111205.blinux-list@redhat.com>
 <mailman.2670.1647446560.111202.blinux-list@redhat.com>
 <mailman.2536.1647451528.111201.blinux-list@redhat.com>
In-Reply-To: <mailman.2536.1647451528.111201.blinux-list@redhat.com>
Message-ID: <mailman.2539.1647452283.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The package with aconnect should be called alsa-utils. That's the name 
of the package in both Arch and Fedora. I don't know that it has exactly 
the same name in Debian, but as far as I know it should. It isn't 
specific to fluidsynth. You can use it to connect any midi input device, 
for example a hardware controller or a virtual keyboard, with any midi 
output that can convert midi events to sound, most popular packages for 
doing this are TiMidity++ and Fluidsynth, but sound card or phone midi 
output is also supported.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

