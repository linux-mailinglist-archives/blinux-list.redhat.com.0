Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 2C22E1D06AB
	for <lists+blinux-list@lfdr.de>; Wed, 13 May 2020 07:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589349159;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9Z7o+z+E58D1WmRVv2d950rvqDJeTFBN2vRiRNCVKAU=;
	b=C2O8txryc1tsrCyE8/wE6n6gdt3UJ+j4uyRQ1+J7zKao4ohhMOA5sz5R6Hcw1tigZsbhY6
	A4mMhbemIJxPnIZYTG3fGxx6GgMOGR1sptCWgq3fZnci7sEIDd15AKG6DukkeiP0zT9rwl
	qnG5v9i9vgobnpLvzA+Dm7qTXLqC9Sc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-368-fjUMP6f2O3WZUvTq89gOcA-1; Wed, 13 May 2020 01:52:36 -0400
X-MC-Unique: fjUMP6f2O3WZUvTq89gOcA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9AC99A0BD7;
	Wed, 13 May 2020 05:52:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 34EA0CFFA;
	Wed, 13 May 2020 05:52:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E810B1809543;
	Wed, 13 May 2020 05:52:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04D5qQTK021214 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 May 2020 01:52:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 323B5101044D; Wed, 13 May 2020 05:52:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E21E101044A
	for <blinux-list@redhat.com>; Wed, 13 May 2020 05:52:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C67C2800A13
	for <blinux-list@redhat.com>; Wed, 13 May 2020 05:52:23 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-72-jqFFzRyYMK6n4u2WAXs63g-1; Wed, 13 May 2020 01:52:21 -0400
X-MC-Unique: jqFFzRyYMK6n4u2WAXs63g-1
Received: by mail-qk1-f173.google.com with SMTP id f83so16200535qke.13
	for <blinux-list@redhat.com>; Tue, 12 May 2020 22:52:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=HahD/6Bqy8i35Cs/8EEKnN1dVrXMA5Rs09fo2coT5Dw=;
	b=LGHGC4+Wmhhuiw0UzILpjUr4UYRqz1CeXtj+FthexyB3AQjkUdtqvR/FfK83WY+uOU
	wHEmeDJxFgJIPuuZzOwYAW+ImwedZz1LO2XAoBW8Qm5sYuW2I0OSupUtnYiZHgXSsvRb
	2sY0NwmUstNUrYR/L4ekFL5CSx6T/OgrH1etEFL1H5bO85vubQRiUr1MyVg+05ZrKewl
	/z1RQsGlQEqa4dMCVR4vhFNgGGLeTWnjHiXaPWNxBXZFokDT8q/SiaHP41HuO36G8Bgi
	iZwWJcZuiTxnNVKKcePVz6K7uj6nNoLcC6C/+yj56npHzpWFuL5Ljwo877Y4uCh4kgm+
	GJSA==
X-Gm-Message-State: AGi0PuZTuNhLENo7PRF/BwWXZt0BPjgofo69IN4/RzvfjswoL0HEIfCy
	lGkI2Yne5JkSarbyEFcMr1ZSgH6oWp4=
X-Google-Smtp-Source: APiQypKwIWID3JVfcUg/tUNJq4bxJOgHq+X/2EUHPMg838sl93Y1vS6aVC9izFElkQPPaR8x5JAn7w==
X-Received: by 2002:a37:490:: with SMTP id 138mr23841702qke.199.1589349140593; 
	Tue, 12 May 2020 22:52:20 -0700 (PDT)
Received: from xu4.kyle.tk
	(2606-a000-111a-8d0a-0000-0000-0000-065f.inf6.spectrum.com.
	[2606:a000:111a:8d0a::65f]) by smtp.gmail.com with ESMTPSA id
	d7sm13079608qkk.26.2020.05.12.22.52.19 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 12 May 2020 22:52:20 -0700 (PDT)
Subject: Re: b s d and orca
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
	<A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
Message-ID: <b12267b0-944d-d609-53dd-11e9375f002d@gmail.com>
Date: Wed, 13 May 2020 01:52:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:68.0) Gecko/20100101
	Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

There was at one time something called GhostBSD, not sure if it's still 
alive. It ran GNOME at one point, but last I knew it ran MATE. I 
remember it not speaking, not because Orca was not included, but because 
Orca needs Python 3, but BSD ports at that time only had Python 2. If 
this has changed now, perhaps GhostBSD will speak now, assuming it's 
still being developed.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

