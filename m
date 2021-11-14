Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4F044FB59
	for <lists+blinux-list@lfdr.de>; Sun, 14 Nov 2021 20:55:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636919713;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dhyBeEWIjuhh9G8Wc0gJxHplL6e0wjixIBf1Pd+DGYQ=;
	b=Tl6aqzSelZi54QpBRgv+iz2kFhvIlGUJaYWM2FEicvVugYbc/Z9EoBmDC6TypApP50Llil
	rmK2vzhymQ5PWwoDG4nbGDrWIrgjW7l39vcRkfwOngl2kMFweJlXiWjwGIpHYhYTFfDpuQ
	HnrtslXnjcsohSskdnPraqTFOi2ONAM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-513--REwqExgNZquW9HqIloLHg-1; Sun, 14 Nov 2021 14:55:09 -0500
X-MC-Unique: -REwqExgNZquW9HqIloLHg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8011E801ADA;
	Sun, 14 Nov 2021 19:55:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A5CF41017CF2;
	Sun, 14 Nov 2021 19:55:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2B8CC4A703;
	Sun, 14 Nov 2021 19:55:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AEJsvD3024196 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 14:54:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 851B02166B25; Sun, 14 Nov 2021 19:54:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D83F2166B26
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 19:54:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B524A85A5A8
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 19:54:54 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-88-UuiXxVfVP5-sg94lvYxiAg-1; Sun, 14 Nov 2021 14:54:53 -0500
X-MC-Unique: UuiXxVfVP5-sg94lvYxiAg-1
Received: by mail-qk1-f175.google.com with SMTP id a11so7978105qkh.13
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 11:54:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=hJeHH5F/fszHmIoz/7omynpMKzFgRviCvdKZ9LiDzl4=;
	b=UzVbAShRPhqiNEiQ31iNyGroo2JjeJrmbQRo3HjjModj/0Mm3izuithSbgrJDopPQX
	ZNxmp9uvDtvO01zxekzgFoSdDF17i46UY2V/e+1kcObGTSqs/mc3pX8K4dl9wSQywhvU
	X/RPZ1yCwXBbq/kCN+D2DPeeTNJg3Vg0i4Yt+OJAMIQ8NJSAeEuwrbdxXJdOEZPXUJ6a
	y6NqvDBdk6Pdf9ksygQB+z4TWNxyV6jynByKfpVEhLrVsU3JF8cPH10CAiPjwmx4wk82
	ojYyDcZ2SZZLqYFtlBd8wUAGEZ41LoyDJozntrBCWVg0CH6rkM0+LQxjk6DIVAl2YMc/
	5+ug==
X-Gm-Message-State: AOAM531+WH+4m94zMD0g3rFJh5ajtmrJgUtnLfXSX1ioO36deX9hBH+K
	sNdgtX6f642tirQSFCBqEgsBOQu1XNI=
X-Google-Smtp-Source: ABdhPJxWXXKTxmASRQjaZlPPgq7BOvEVIqiTcSoTalwty/lXJakDsKAKhWzm7oEPueg2WWA5onP3sQ==
X-Received: by 2002:a37:9b4a:: with SMTP id d71mr4774027qke.319.1636919692428; 
	Sun, 14 Nov 2021 11:54:52 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	d16sm6222621qtn.59.2021.11.14.11.54.52 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 14 Nov 2021 11:54:52 -0800 (PST)
Message-ID: <b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
Date: Sun, 14 Nov 2021 14:54:51 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any other accessible email client for linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
In-Reply-To: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Regarding message threading, this is one major complaint I have against 
Thunderbird. Although it does most things right, the unthreaded view is 
the default, and I have to turn it on for each individual folder rather 
than just being able to turn it on once and for all. The other problem 
is that even once threading is turned on for a folder, Thunderbird has a 
bad habit of expanding random threads, sometimes, but not always at the 
bottom of the list of messages. I can of course collapse all threads 
with the press of a single key, but having to do this each time I change 
folders does become quite the annoyance at times.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

