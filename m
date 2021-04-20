Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7C3793662A0
	for <lists+blinux-list@lfdr.de>; Wed, 21 Apr 2021 01:54:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618962862;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HDRb+uc3lJK674sNjhPmQlP5b2wIyIi4UUWjVWkNNA4=;
	b=QXign+qvqMkMusLwlM645TOhV8qspQrIAaBc9qrX7sjCGBg5J8RA83Albthg4qHmuX5oRW
	bBGMwUFcUTV6mmivB8L7LH8emdwXK3kpP0/cZmIvirEm9EAGu/Qy7ZwW2Qkpvk/KYyGlHj
	wc449X/YJJU7bOhyQmMl0tk1ufv1hus=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-9-MT-Tpa0BOSGborImoEC_dA-1; Tue, 20 Apr 2021 19:54:20 -0400
X-MC-Unique: MT-Tpa0BOSGborImoEC_dA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 62C5618397A8;
	Tue, 20 Apr 2021 23:54:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E57296064B;
	Tue, 20 Apr 2021 23:54:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3E8EA1806D16;
	Tue, 20 Apr 2021 23:54:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13KNrrta029928 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Apr 2021 19:53:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 36E3E207977A; Tue, 20 Apr 2021 23:53:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 315852068537
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 23:53:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BF89C104F0A3
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 23:53:50 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-158-hLyekoneM4ObttC7fM206A-1; Tue, 20 Apr 2021 19:53:17 -0400
X-MC-Unique: hLyekoneM4ObttC7fM206A-1
Received: by mail-qt1-f181.google.com with SMTP id o2so16636956qtr.4
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 16:53:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=NgMwB5GONh+xVpOJHBWsJSmw4+wbSOfDAWlYDYPSAeY=;
	b=eOJ1fwiQ8na5FfN4SB2UXxFgTUyos3OdD3hRevI1TtsavaaHkELFW51QAw6W3kCpNL
	uv+/0BciCZWhS3Yb8p8KFN3+xXVh1pk0Cz2KPlXqs+ttTZjhkIC8BLtV57TLHKjzPGGv
	kiAnMNI3tQ54R6WD/Itr4FQpsbnRAj3pB5ETYEo1o40yaSrv6iaZYBMPPiB6EHDxSesa
	5XIr7lkJGXCr0kU44f0Fc4n+z8pWRNs0K4mXywUodLIEpnQuwHF1qImKd6oQWENPWYFY
	svnX2FQBzW6iiZv4C8NTqR5XYUX+ee8zntUhQkva2yYSNwPTvCyrBdtPk/m3/4oZ5CHP
	AGvg==
X-Gm-Message-State: AOAM533Pp12DwjGp81yzLdfkOSTFgnF0aRUXfCzuKdP1XkWRWpRjtjJR
	7HkHwa35JXlYIZ+3y/i7Vc7KXtW1NdlJww==
X-Google-Smtp-Source: ABdhPJyDCeqmNpm6P8JTbQIcuVuUy4m8W7Po5G3vnagb1tvm6ZgOiSb6ReCteL7+rYE5fD5VzfmT7Q==
X-Received: by 2002:ac8:6f4c:: with SMTP id n12mr14687756qtv.22.1618962796807; 
	Tue, 20 Apr 2021 16:53:16 -0700 (PDT)
Received: from darkstar.example.slint ([2601:192:4c80:3c00::7c1a])
	by smtp.gmail.com with ESMTPSA id v18sm301183qtq.38.2021.04.20.16.53.15
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 20 Apr 2021 16:53:16 -0700 (PDT)
To: orca-list@gnome.org,
	Linux for blind general discussion <blinux-list@redhat.com>
Subject: No sound in installed system, after login, in Fedora Mate nightly
	build for April 19.
Message-ID: <6f357152-a24d-51f6-abde-4dae367fa2aa@gmail.com>
Date: Tue, 20 Apr 2021 19:53:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBoYWQgc291bmQgYW5kIHNwZWVjaCBmZWVkYmFjaywgZnJvbSBvcmNhLCBvbiB0aGlzIGxpdmUg
c3lzdGVtLCBhbmQgb24gCnRoZSBsb2dpbiBzY3JlZW4sIGZvbGxvd2luZyBpbnN0YWxsYXRpb24u
IE9uY2UgbG9nZ2VkIGluLCBJIGxvc3QgYWxsIApzb3VuZCBmcm9tIHRoZSBzeXN0ZW0uwqAgSSB0
cmllZCB0b2dnbGluZywgcmFpc2luZywgYW5kIGxvd2VyaW5nIHZvbHVtZXMuIApBbHNvLCBJIHRy
aWVkIHBsdWdnaW5nIGFuZCB1bnBsdWdnaW5nIHNwZWFrZXJzIGFuZCBoZWFkcGhvbmVzLCBhbGwg
d2l0aCAKbmVnYXRpdmUgcmVzdWx0LsKgIGhhcyBhbnlvbmUgdHJpZWQgdGhlIE1hdGUgc3Bpbiwg
b3IgdGhlIFdvcmtzdGF0aW9uIAp2ZXJzaW9uIG9mIHRoaXMgcmVsZWFzZT8KCgoKVGhhbmtzLAoK
CgpEYXZlwqAgSC4KCgoKLS0gClNlbnQgZnJvbSBteSBMZW5vdm8gVGhpbmtwYWQsIHJ1bm5pbmcg
U2xpbnQgR05VL0xpbnV4LiAgaHR0cHM6Ly9zbGludC5mcgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

