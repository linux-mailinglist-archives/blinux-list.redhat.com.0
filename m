Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 11B131D1C38
	for <lists+blinux-list@lfdr.de>; Wed, 13 May 2020 19:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589390846;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+o9yDryLtfIYkI2iFFWd77qaVWs7eL08M/9LLu1cVA8=;
	b=TsRjbBMxlaf5/zarOckv1T4/TiTFtUvRoR5g2jxe49p1UVJfosv1pKzQehZYCMqmqDIxwb
	y3aTqKpaditdHluMUOQAWH/GpsFiJY5gHdyI3ABuzuFX4OajivpNh873Enhkk3LVsHRGyc
	UnYfMbRSeLgRp/BBQeWufzXu9YwdQoo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-245-hZmT2pF7PUyUzcMYBKKphQ-1; Wed, 13 May 2020 13:27:23 -0400
X-MC-Unique: hZmT2pF7PUyUzcMYBKKphQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 254EB107B76B;
	Wed, 13 May 2020 17:27:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9688A5D9E5;
	Wed, 13 May 2020 17:27:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1073C1809543;
	Wed, 13 May 2020 17:27:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04DHQGpw013093 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 May 2020 13:26:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 162D9117928; Wed, 13 May 2020 17:26:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C277115E0F
	for <blinux-list@redhat.com>; Wed, 13 May 2020 17:26:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8C223833B44
	for <blinux-list@redhat.com>; Wed, 13 May 2020 17:26:11 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-85-W2do2xSoMUCxJjeDqzBivQ-1; Wed, 13 May 2020 13:26:08 -0400
X-MC-Unique: W2do2xSoMUCxJjeDqzBivQ-1
Received: by mail-ot1-f51.google.com with SMTP id m33so31090otc.5
	for <blinux-list@redhat.com>; Wed, 13 May 2020 10:26:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=v5UJ3HzJjaml9OBuuV2/OQFh2YydLjJzR3NFwhqlggI=;
	b=kya88x19DE/QvFAXFGDV3Pd9TZXxFvDLUi3GoqzhJjE0u2yMVfAi1lhjlCvv7XLXBc
	FqA6HEgjtYfftBSJg2jPPwO5G7Wh16mqYEjktJh3ajSw2Z3/tzyhTUs5cJApTEIVvsKf
	XDB9H0aFxtz/zK+OiM2vZEPucLe2FLQuaKL1ky44RCOMLDm61er7FBqwY0lQcwwPz+0h
	MQPAMFYnkjp0SMj2kH+NRF9KCYTXMaarXHjntLdbFg3VF1KBMbpuEmZvY/fWUGC43/T4
	6gANFU9078le/LUJWMq6acXVKfhHA0NJ0MFLdWnnxrjwNUg8qbguFvF1D5aWKLXL5oEf
	k7bw==
X-Gm-Message-State: AOAM530gDD0C4c/dM16N8oG7KuXcukyHNUpsfClekd99RhZCzlGjnYfy
	IO5X2raG1Yxgm0PssNMffD23Rs8U
X-Google-Smtp-Source: ABdhPJwQ4OVOBgZNgixqvmkYaf6gEmXSeq6MW0UU3Jj9+NivxEXWSaUgEuKIXhdhjsmlneoEmZllwQ==
X-Received: by 2002:a9d:7f0f:: with SMTP id j15mr361197otq.109.1589390767720; 
	Wed, 13 May 2020 10:26:07 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:c459:2f58:5ff0:25fb?
	([2601:3c2:8200:9360:c459:2f58:5ff0:25fb])
	by smtp.gmail.com with ESMTPSA id l8sm90463otr.7.2020.05.13.10.26.06
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 May 2020 10:26:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: b s d and orca
Date: Wed, 13 May 2020 12:26:05 -0500
References: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
	<A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
	<b12267b0-944d-d609-53dd-11e9375f002d@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <b12267b0-944d-d609-53dd-11e9375f002d@gmail.com>
Message-Id: <BF28FACD-86D2-4BE7-AC8F-9B34548C4081@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 04DHQGpw013093
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I may try to find how to write to ghost b s d.
Orca was not talking.
Someone from be my eyes said the install choice was there, but I could not get there with keyboard.

> On May 13, 2020, at 12:52 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> There was at one time something called GhostBSD, not sure if it's still alive. It ran GNOME at one point, but last I knew it ran MATE. I remember it not speaking, not because Orca was not included, but because Orca needs Python 3, but BSD ports at that time only had Python 2. If this has changed now, perhaps GhostBSD will speak now, assuming it's still being developed.
> 
> ~Kyle
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

