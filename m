Return-Path: <blinux-list+bncBDGI3AUYYYCBBG6CWDBQMGQEONSGGWI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 7346FAFBBC1
	for <lists+blinux-list@lfdr.de>; Mon,  7 Jul 2025 21:33:52 +0200 (CEST)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-74d15d90cdbsf942689b3a.0
        for <lists+blinux-list@lfdr.de>; Mon, 07 Jul 2025 12:33:52 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751916829; cv=pass;
        d=google.com; s=arc-20240605;
        b=fwKQf8QZk08ul0sSVqWwG4868KAR0ggN/5bYugGUmkGR1Dazu+5EEGeTj4/rBikcYf
         rJFNa1bE5yQshY3t2d5hrizAU8lGbabm7PkfXfBlAiI1MBKbKGaj4YRrEEm5w2wlGo4G
         w3eY0Ck3C7xlVL9nna8cy6IirCX/hnLfIPaBQNxJIuZ2otRNDPewKdp1TJ7JVrQW4FRw
         1m3QtfukBNy8AoAfT0a9vigZXjNAp8NPT97XS/taZ7VU5LnKA7WYVtxzLKVlhaFeH9o+
         WLpQW3r6RcRdZidKt70AWhNq/PQXe6m1Npf1OCQjMtvthUDPCC/neceB7OcGx0jqvWKW
         TaHg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=i5ormJ3ie8n2+sjurfhfqU8lWOQkbMV8k0aUZQULNOI=;
        fh=S8UKUf517mWzz5HrdsaimtW1NXskima1h4W6LJlngsA=;
        b=FOjd1XvZVQU6oRHosh9pILVm1+GEcxvUTnE9hndaSvQND4w6nvk/of3Wv9hdIZ4zQe
         W9TVQSg1KM9PbtNEja95agJzHF61KmUa40lDVvPdY+3+fHZGmMxxnHsmmfKFq51WzX0h
         QiVeSbQ9yf2fy9r+SM5XlRkbja7ADTyw/n5HcsID7eeLRNW1SkE4oXovNn3MoVK/tuvU
         zWlgB92GZyTMybbdPi3bpiD4b97zxjKgKm3yUCxWZXnHEDQplGBYcQCm8Uo45Qx+E+UM
         7NFGEjmGlR8Vk/U8AofOJ1CIbqRFwP2YeQSPe6K3gVb/qPoOHud3F7VFZe4cuAJ0IOUT
         gKSA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b="tmEW/V1S";
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751916829; x=1752521629;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i5ormJ3ie8n2+sjurfhfqU8lWOQkbMV8k0aUZQULNOI=;
        b=vSbpZazA4edCnVc0SBKbs80Q06fNFnAbD0bmbD0QeWh0sWRihtmX6LuHaPX2FLMWlc
         t2loIHT2tAAtOapnUWgSl5YmiI1DIG7EsS+D6slsZwJbVw089W7JsBCaKQXluD3tJ8IX
         Ft6yHO6+Z/HZ0/N7vxTNLVr3Az45wUYxaM8P+z9emqqMY0BG53y0mrZUeriuQWZOScqk
         ids/eigAi+mTh2wWhywldnCyyuhEcbsKnQVmzP1xjKbg3BXGnGxvl/nLLxe6FG+axQac
         hTR2+noI9DVc1HkzO85SD6COL7SPBZscS08gaX3FEueMTrqQssPe4vsGjLfBWqxvjzPz
         Pf2w==
X-Forwarded-Encrypted: i=3; AJvYcCXg7PoIEPmXtsWzcvHkPvtUO67ogUjdQmEVTw5YM0HNjlp9VZnXosZI/L8Sj1/URS0nKjEWkA==@lfdr.de
X-Gm-Message-State: AOJu0Yz7eEJd+CI1m++CYPqZFAzQo+djWg5zgjZRA4pLNgLbDguXe+Yc
	pggZ34qUri6zS3A2D/WHXxuhH7XEKhLINJLHYOINgrreZ0TbZQIX+8P55anGw3TGEno=
X-Google-Smtp-Source: AGHT+IEY74xoh+A7mAZcRAc8UBraasGOt0+g94UXXkIo0hVS48EmvEBVrtAa7/m5Q10ecCy3XCTQCg==
X-Received: by 2002:a05:6a21:a346:b0:223:dc82:95db with SMTP id adf61e73a8af0-2260b874434mr21626500637.32.1751916828468;
        Mon, 07 Jul 2025 12:33:48 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZf1/hrtHUcxLzpg48a4kn+xBQAv1vRjmI+zxyzRFerieg==
Received: by 2002:a05:6a00:2ea0:b0:736:b063:5041 with SMTP id
 d2e1a72fcca58-74ceb9fcd24ls2658022b3a.2.-pod-prod-07-us; Mon, 07 Jul 2025
 12:33:47 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWe3iY7J/F7XFQ3AOegCbA2/DouaWS1ANZOhToP0ZWmZUBM5P6qiQSkZ423y4cCmGoa8+00sHLm830IAw==@gapps.redhat.com
X-Received: by 2002:a05:6a00:6ca1:b0:74c:efae:ffae with SMTP id d2e1a72fcca58-74cefaf0042mr14661073b3a.5.1751916826999;
        Mon, 07 Jul 2025 12:33:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751916826; cv=pass;
        d=google.com; s=arc-20240605;
        b=TyNU/T/ZfD8b7N5MAwEp61Kh4rL9aoFv5x0iiBsG/+Wrh2V44yK+taf0xIT3f4KDYS
         kMjrtnhMR9NB0GWYWhVb0oiOIvYk2Hmp1cOGwEgHQE+3RfUDeUcvGfR35rUkbjzqowNR
         4cH8jtCWv7fSj3h5ZYEJEYGfSY7XenKFY8+H4l22povF7QTdhbMvVH18OrnnHEl9kePG
         XY93wMhTUbSCJNzqjU3lNoNRw4yJzw+I4ejYo9y1VbwqMXE5YedutvclGrlj7UGGWo67
         6nFsATu1TB4rAdguloUk4Z8X1V2xE1tA6ahOT4ychnMmDv+sDrLEaiuJa67FZRoK1aYc
         U94Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:dkim-signature:delivered-to;
        bh=nOrh3EIhiRIRsW1fspexCOPNwZo6GymkkMtbumoPD6o=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=lnWR2ZWkkgJ8tVjGUsAO9b3vqOgg2ym6tIS9UvqcFIkVRQi+n/Q915DJ3ikb5un9/S
         tVFOtkzEjVgrhfZYDuCISh54xj3wjt+UdlGrkBYWdEWOVCQTL71JKPrPkcHegBAZZaII
         K0QbkvwJo3vMFeLdvDC8ALAtOhCV9t3wQyStNdkOHC3yebN0jvV9BXIBJ8rX+nfIaU6U
         NEJ3riDgH1tZz9wLllzxwGVvsdSnYSzwiTFoSnsDfbg580r3xK/AHjqM+6ITukenYQwb
         k1KITQ8d9vypObiYCFHZsbTrftxOYSsoh1U6RXRmSFChI3ZXlcrRqOoinS+sgmg79AF4
         HzaQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b="tmEW/V1S";
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b38ee3eda64si11338114a12.83.2025.07.07.12.33.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 12:33:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-76-to_5MqnvPWK_mNoHKk4IhQ-1; Mon,
 07 Jul 2025 15:33:44 -0400
X-MC-Unique: to_5MqnvPWK_mNoHKk4IhQ-1
X-Mimecast-MFC-AGG-ID: to_5MqnvPWK_mNoHKk4IhQ_1751916824
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ED29B1800368
	for <blinux-list@gapps.redhat.com>; Mon,  7 Jul 2025 19:33:43 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E8BFB19560B2; Mon,  7 Jul 2025 19:33:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E634319560AB
	for <blinux-list@redhat.com>; Mon,  7 Jul 2025 19:33:43 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 71093180028A
	for <blinux-list@redhat.com>; Mon,  7 Jul 2025 19:33:43 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751916822;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=nOrh3EIhiRIRsW1fspexCOPNwZo6GymkkMtbumoPD6o=;
	b=JzIoM6k2bIrSWVxBZdSrvxtWhXO/6wZrqVvri6nYcgPENrPsqQ52aFbeSMyc/x3WlMcY6j
	h9WDrcArrMrpf0B+tvE2k9xo9177ShVJB5e/RxfZH1V1+tqCWujR/XVevfmbF4N1vwmgSU
	z6Yliq1Bf5sAolhJ/ISmPGxNCRZa0XkcOquQrG6uWKV+lJrJH00CNuevdOBYdXHlpETAuS
	H0D6DFNZRLFuK51/lJmSjig98JH1dNMCpuMtvGryRis3EzQwvVLJkiyGEUIQI3QLIG+QOw
	ddG3TMtja6ixIP2b2nhrcFdt7jiuBQtMJvAW3jvsbxRvlj+2qJMFVp+R18ngPA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751916822; a=rsa-sha256;
	cv=none;
	b=GwLtt3FTfcX5t6dEwHDbMslxdhNTisezIKimEXQUY58vXZjV+BK8G5FtszUMAX+ix74Jys
	8MR3QijIwaxN8vwPR7kaLLI2g2Cqcudgm9LsZB999Sb5qCu6ztHO3wmDRsgbJOAg3pax/D
	M2t5wQIffDd+7jP8PEf6THl0AcH0HP7c8YpmgrrZgzVo1lykMZ2y+usmcHSEnhfJQnQqS7
	xlSlKtS1eeSUOyJM4BjK6Jke75Cx4RlpxozUUEEDJPc2oAclAUdjGA44jmPKTsP5DGHg2D
	Scck/WkoRMm+Uc2Ua8XylnG4Q4ty+CNU5c4l2WP0ZN5AEPPENZszIhqgJXJljQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=panix.com header.s=panix header.b="tmEW/V1S";
	dmarc=pass (policy=none) header.from=panix.com;
	spf=pass (relay.mimecast.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-634-6fgBEh1mNf2YZdSKc0KKYQ-1; Mon,
 07 Jul 2025 15:33:40 -0400
X-MC-Unique: 6fgBEh1mNf2YZdSKc0KKYQ-1
X-Mimecast-MFC-AGG-ID: 6fgBEh1mNf2YZdSKc0KKYQ_1751916820
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4bbZD43KkQz4Kjp
	for <blinux-list@redhat.com>; Mon,  7 Jul 2025 15:33:40 -0400 (EDT)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4bbZD439nsz1QXM; Mon,  7 Jul 2025 15:33:40 -0400 (EDT)
Date: Mon, 7 Jul 2025 15:33:40 -0400
From: Rudy Vener <salt@panix.com>
To: blinux-list@redhat.com
Subject: Re: Firefox Talking Book Downloads
Message-ID: <aGwhFPpO94HrYerk@panix.com>
References: <20250707113219.039745@wb5agz.lan>
 <aGwVCQ1QYN2uDHwu@panix.com>
 <7fb2821e-6df6-4298-cd18-e789be3c8ff4@hubert-humphrey.com>
MIME-Version: 1.0
In-Reply-To: <7fb2821e-6df6-4298-cd18-e789be3c8ff4@hubert-humphrey.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: xvuJMNHlYffSHWXANlB1_M2qkfqIVUt5ssj8iz8cCAE_1751916820
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@panix.com header.s=panix header.b="tmEW/V1S";       arc=pass (i=1
 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass
 fromdomain=panix.com);       spf=pass (google.com: domain of salt@panix.com
 designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Hi Chime,
The bard site at
https://nlsbard.loc.gov
works just fine with Lynx. 

-- 
Rudy Vener

An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - Orcas Do It With Tongue https://limerickdude.substack.com/p/orcas-do-it-with-tongue
Website: http://www.rudyvener.com



On Mon, Jul 07, 2025 at 11:46:58AM -0700, Chime Hart wrote:
> Hi Rudy: I didn't think these library sites would work with L Y N X? If it did, 
> I might think of signing up. 1 time a friend wanted me to look on Bard for 
> something for her, but there was way too much javascript.
> Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

