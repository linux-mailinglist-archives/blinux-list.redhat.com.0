Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE6A45AD05
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 21:07:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637698039;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JTzdPKVUk2dXFQcUbRiSHnZwX2mUM9HtFY78wIsTvNM=;
	b=ZVQTGeF3lowwoynw8iGoH2oHT3OMtdrjqRy72SygMN9Bpk+VW5r1jmJhFXQ1nKN9nyRgVA
	x6jeD++jyCXUh388QXZT+tptFqOOVUfPT+lR9oV9r8Q69f9DxLyynXOiQNLgBrHTWpyW0F
	wd1/aP8GCd9q2r+YRiQruh2m+90k5Bk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-64-HtJW-Nh4PuiVONBtzZ7QDg-1; Tue, 23 Nov 2021 15:07:15 -0500
X-MC-Unique: HtJW-Nh4PuiVONBtzZ7QDg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 399D99F92A;
	Tue, 23 Nov 2021 20:07:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DAF2E60862;
	Tue, 23 Nov 2021 20:07:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 688E74EA37;
	Tue, 23 Nov 2021 20:07:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANK73aB006114 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 15:07:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D730C4047279; Tue, 23 Nov 2021 20:07:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D2F624047272
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 20:07:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9535185A794
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 20:07:03 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-19-08lBRJcOOi2-redsPn6r-w-1; Tue, 23 Nov 2021 15:07:00 -0500
X-MC-Unique: 08lBRJcOOi2-redsPn6r-w-1
Received: by mail-qt1-f179.google.com with SMTP id q14so406607qtx.10
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 12:07:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=sR8gpgZZAfigUTEA4Gtm3l26d8/WPYYTmfYUowd/Gzg=;
	b=qejkeOCnIbjKYF9cWzgz6eXdYWkND849z6MACIRIycw+tf050hbeoPe9W+uCByI49w
	u5v34Sib+tlD40AP++yt21/e1jSCF7y+OlgQYtGl0UQ2kF8W/6YvWEvBX1cs7VhhbXAu
	dee50o/kWd0MhF5FYk2b2Ijm6CY9Jen2C3fVIhMc987LFe0Q7ZUFyeBEjx5dpL7fuexk
	7wizFFxSU7OaMUgO66aZi1u8GOes/OcgMHATFBBWMHEmNOGa59S5mkvUhhtSLlUlYcXp
	l/OWNTTlOuGGkEMEL32fOyEq5ygP8ZCibW6BOLoL9ts1utHBOnHKGWu1kbddbPKJEXWO
	4o8w==
X-Gm-Message-State: AOAM533DMIxZlFoalvPWn/DkVeSyqPxqEHr1cfENtm8keWKv9ivPKWzs
	OEXBg7p1BDC179+93VSMK8IB5tKKV2Y=
X-Google-Smtp-Source: ABdhPJxfZmkAKUyftqK9x3kiW506JC7JjsTNLqKenwBCpJ6ejG0NPRArz8TUEUZCF5DO1OcW3q4iWA==
X-Received: by 2002:ac8:5e12:: with SMTP id h18mr19819qtx.143.1637698020309;
	Tue, 23 Nov 2021 12:07:00 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	g123sm6628672qkf.108.2021.11.23.12.06.59 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 12:07:00 -0800 (PST)
Subject: Re: looking for two gui accessible applications ClipGrab
To: blinux-list@redhat.com
References: <c4fb736f-b117-f9f6-54da-4a76e260339b@icloud.com>
	<E407E834-C618-4795-BBBA-876D57309CF0@gmail.com>
	<CAO2sX32rX+pa=rWwkCuH2gwUuY2NcrjA3UNZHR5HMQvqhDE+ig@mail.gmail.com>
Message-ID: <a5e32fec-9c12-db07-69b7-ca6a5e7a8397@gmail.com>
Date: Tue, 23 Nov 2021 15:06:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX32rX+pa=rWwkCuH2gwUuY2NcrjA3UNZHR5HMQvqhDE+ig@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Snapd isn't just an Ubuntu thing. I have it on Fedora, and it's also available 
from the AUR for Arch users. Flatpak is another similar type of cross-distro 
packaging system, and it's available from the Arch community repository, Fedora 
and Solus, and I think it's available for other distros as well.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

