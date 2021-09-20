Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 61CCB410E04
	for <lists+blinux-list@lfdr.de>; Mon, 20 Sep 2021 02:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632097525;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oJEZzUdFiwccIO5fRPe9tJA0mcM0csf9Y6R3qkKsVhI=;
	b=hhCg2pM4hI6rHz8/SmG2MnqXHSHlrdzhY+S4aO0WrauwV3T9DsTJQjfkQVuxrsZtZ/MpRq
	54J/i+eCuzQmw9RKxJieQBVlph0gvXg8qSt3IEriTsG35mlmT7LFHDVKrNyAMVonAcjXn1
	AgNcFMSpoEEFbZWA6YHjjMSV4bLqZw8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-124-9-UIdN2VPxWNZ6bl97pwtQ-1; Sun, 19 Sep 2021 20:25:23 -0400
X-MC-Unique: 9-UIdN2VPxWNZ6bl97pwtQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 951915721F;
	Mon, 20 Sep 2021 00:25:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2903F6A8F5;
	Mon, 20 Sep 2021 00:25:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C64131800B9E;
	Mon, 20 Sep 2021 00:25:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18K0PCAM012438 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 19 Sep 2021 20:25:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BF89950163; Mon, 20 Sep 2021 00:25:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA1885015E
	for <blinux-list@redhat.com>; Mon, 20 Sep 2021 00:25:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2E241100B8D2
	for <blinux-list@redhat.com>; Mon, 20 Sep 2021 00:25:10 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
	[209.85.219.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-457-uzZ2DZXNNA28mK5HHMBiqw-1; Sun, 19 Sep 2021 20:25:08 -0400
X-MC-Unique: uzZ2DZXNNA28mK5HHMBiqw-1
Received: by mail-qv1-f46.google.com with SMTP id cf2so10132170qvb.10
	for <blinux-list@redhat.com>; Sun, 19 Sep 2021 17:25:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=yPSTkOHvqXtkSvDcYTsX7nryrH+z01LW2PdwVdl3+H8=;
	b=Iyhl1rBZ8fRNP4KZVwcElV/TJWxvdT3GDPdOYALIouKBWmEvNs+iPNGnPObhgxybTC
	vgy5+FEudM2G4kyB37H8E/AydYiqBFnNnqfUc6SAAaSg0vzNfFK2uIIN5gJlwBLBMimI
	vtbM9GHP0XSBHlCy445DgATZRnaR+4AzZXrbwaOkBsURQljJL7oLIZvjWN/BNGnAy7lR
	yXEiq4MN6oQfLC6QfNKhACogKJv9lOP/o3beUph+7kBNBxJzjXL5RQfOE/EqI8mZNXda
	rgf+XBlfVkS4hqjZ8ZxJ8OSBn9PtMs4CWuoEFuqZaW2Q/ZQ7ZFWgnGpjBNu9dNDVt1Yq
	W+Uw==
X-Gm-Message-State: AOAM533AoYIWvlqwbZmfqiwLRWjkoHuBZCEefjz+o3IRVEwH3+i2cFlH
	hGwtXbeGK47T10Qwnu+743QFqyDbWbOrCQ==
X-Google-Smtp-Source: ABdhPJxEgkistYEPIaRNXfAKoyEg4yNiRbGFMOrOrMZlPMC1dadlUMkGjo7L0A3bsiMK+JoC7aHFxA==
X-Received: by 2002:ad4:4689:: with SMTP id bq9mr22684047qvb.48.1632097507737; 
	Sun, 19 Sep 2021 17:25:07 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:1420:c075:52a3:6adc:af2f?
	([2601:192:4c80:1420:c075:52a3:6adc:af2f])
	by smtp.gmail.com with ESMTPSA id x4sm5674503qkx.62.2021.09.19.17.25.07
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 19 Sep 2021 17:25:07 -0700 (PDT)
Subject: Re: How to unmute pulseaudio from command line?
To: blinux-list@redhat.com
References: <A3A4EA2D-6149-4523-8D02-F26520A3A009@gmail.com>
	<20210919184501.37be62a1@bigbox.attlocal.net>
Message-ID: <9c46cdce-c7d6-49e6-c241-6fc1cce5fc0c@gmail.com>
Date: Sun, 19 Sep 2021 20:25:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210919184501.37be62a1@bigbox.attlocal.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzLCBUaW0sIGJ1dCBJIGZvdW5kIGEgd29ya2luZyBhbnN3ZXI6CgoKYW1peGVyIC1xIC1E
IHB1bHNlIHNzZXQgTWFzdGVyIHRvZ2dsZQoKClRoYW5rcyBmb3IgeW91ciBhbHRlcm5hdGl2ZS4K
CgotRGF2ZcKgIEguCgoKCk9uIDkvMTkvMjEgNzo0NSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBUaW0gaGVyZS4gIFlvdSBtaWdodCB0cnkKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

