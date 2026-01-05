Return-Path: <blinux-list+bncBDYIZZNASAHRBDGC6DFAMGQE4TIUQSY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-wm1-x347.google.com (mail-wm1-x347.google.com [IPv6:2a00:1450:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3BFCF589F
	for <lists+blinux-list@lfdr.de>; Mon, 05 Jan 2026 21:37:34 +0100 (CET)
Received: by mail-wm1-x347.google.com with SMTP id 5b1f17b1804b1-477b8a667bcsf3377405e9.2
        for <lists+blinux-list@lfdr.de>; Mon, 05 Jan 2026 12:37:34 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1767645454; cv=pass;
        d=google.com; s=arc-20240605;
        b=X3oaZa/bX1u1Fmt9wmF4M6EBGrZfe6I8W3+uRBhYSJNVHn0QHT5iGdfH4xlcJZiRQm
         QNkhGXWgjs4oVOjD1U9RWnA2QixewU3OWJvKSWs0Td52l7jTjbKmFGGmyQBZmkgVzxkj
         DIp+0T15C9Y+C9XIVxXqcgW1sMarHBpR6wV9Hb4B23tWqdh0Ajh3Tyo051MoPxzEETuC
         4FlmSMeXmgGodTv1jpquEkfzT4KRDl8LZMsTVZieEfYtrJgCeABdEAW4cepnCkhhIkUu
         Dft8c3U10Nf/xn1NR+OGrJg3TCIPJ5htsuU96/KsyR2vA0EO5K9WqJVHqv3DmTYw95DX
         onVA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:sender:dkim-signature;
        bh=hfAGLtHh1vAjNtL5wdj4KEl2nGckSiuGxNTvRC3XG5A=;
        fh=QM46BY8kfEuCK7Smn+0Qb/+Q8HJvE16lL0jlRTWVbkk=;
        b=geSEucEOPo3hCe9GK5ntdaiZUoZ79sycUpWmFLzRnXR4YrH8Ran8dFluJJRupCjLyN
         ppBBEZYhSprxSVn99SVE89gMIjRaE00aZTUePSm+xmEnQ+tFhHTyulE5VRgUyPsITOsW
         /hKYybtcCHXN/SCw9Ma3QHphkZiWy3q0vBKeGPPz6jK7+17p45NUioQ+DbQx9MC7c/3K
         jwcRN/PnU3hs9yN/9e4ZZrW5k6Vga/dUcW3bUxyu6eT5qBTHG/CtTd6xj1Kih6wcJMmC
         bmBBIAoQSBRhnt0EgI5ixUNAEbm1mNP0/ZLe7iPBKdq4MdwQRvNt1doG9EAz84xZdzej
         adyA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=XSm1dFZm;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.175 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767645454; x=1768250254; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hfAGLtHh1vAjNtL5wdj4KEl2nGckSiuGxNTvRC3XG5A=;
        b=HVLhKYc2mTtqEiiiMKZTFAj/WaEJHyyRhgj0M7EnbGr+cBvVbAGeBVcVAfPfVyyBWv
         lPzsWPP+f084mudVhJQ+mseyIBw7Le4iSD+5QDqw2me3ZplQYPdZ89zP6XvW6jueBtRP
         WQLVhfYZwc3mke+PRwahl+t1mv+DiDjqcSwVOzBu5q47JNr+tEtWMgRSFl2pF3erND0W
         vLeKQBuIfBEq24o3/vAt782f5HO13HTLoJ9DXzlr3glLGVLrRxWcUdx0xqaZN75CFjEh
         mMaA/xbP0A2qXaPQD9egiGKw6q36+OQp87W6mEV2W3EA7JKbog6JtMzMXWeoOz3l5clY
         O0cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767645454; x=1768250254;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:delivered-to:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hfAGLtHh1vAjNtL5wdj4KEl2nGckSiuGxNTvRC3XG5A=;
        b=ml9F+NpTjDtTKu5Nphowur9B1q2B/gvtv74n5QVdmdgSse5CjjRyrndZDto8gukcIW
         4OaXv+hDh3Ehf0p8M3SAGXbI+AZldnwtxJaQdPljPn0U/IeUopJEz/LRPHhZ02T+pO/K
         owFat53depB6SaZJdLZ5dmxSg3X9CZmYfscnxZz0igAGaq2cEDoEECPYJycV87DclqsA
         3eIMuCz4wxhU7CHqAk0tyrcwwMTW0U1p3hQIKku3vzMXR52yAVGciEyv57YrzAP7BiXT
         xpmz1bDLZxXzglfk1hD3AK82nizJFMxwJRajXYYDsxxHzSJZl4yRqvz06lJTIrIHA9+l
         v+4w==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AJvYcCXZiPTteBSg4+7DpCrwduQZIcyGDpZ+bLaZt59XhD6ZEhyfuLMSysbwR32GcFYHb5j78QjMgA==@lfdr.de
X-Gm-Message-State: AOJu0YyOQkEn1t72Wj9DiWmjVYy9Mqlnv1VR8Ox2iy1Y4hp51re35qJD
	HoHYDKHEYbTKWrOmZl45Ry2VWjkl4k6laeI7Qj2jt9In6+JiJ6xZCje/LMiqGDQH3ZE=
X-Google-Smtp-Source: AGHT+IGI25fKu1KUjAAOkAyOSn31jHxLgdmaEyZrwhWAtZgP749x5KOEm6iuj8IwtW8zhZ4zUgqB7A==
X-Received: by 2002:a05:600c:608d:b0:477:af8d:203a with SMTP id 5b1f17b1804b1-47d7f09ffb6mr8060915e9.27.1767645453643;
        Mon, 05 Jan 2026 12:37:33 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AWVwgWZdgx6jtBQQg/mjhCI48WcnLY/HA4kUNc0pebZBJrc8Xw=="
Received: by 2002:a05:6000:2004:b0:432:a9dd:5f60 with SMTP id
 ffacd0b85a97d-432bc8e2289ls228179f8f.0.-pod-prod-07-eu; Mon, 05 Jan 2026
 12:37:30 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCWQYBmPUt4nbJXBoI4CoT9k3yYMT1TW+zkO2/61RLZv0XC0XO7GIFmsSoU0YWzB/xeY5ogMbi0DuI/hXQ==@gapps.redhat.com
X-Received: by 2002:a05:6000:420c:b0:431:855:c79a with SMTP id ffacd0b85a97d-432bca32c64mr1346626f8f.27.1767645450514;
        Mon, 05 Jan 2026 12:37:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1767645450; cv=pass;
        d=google.com; s=arc-20240605;
        b=YMTUl4rG6Cs2/X18tBihjcWvcehW2PmkD+KlhwSZUDiGbM8POAkT447K1aN0lU5S7t
         pUpufD6VdjpZL8IV9yCZ0/kRSG4W2HOrjiss7ZlD3RSn2RHdeSz3rSeE5c34mr91kKHz
         irySEmG1NcwRzuaS7YAtsEVe6ya4fQ5KDbgl9Ab4Q182vM2njwr4ES4U9idF2xUwgJyW
         NCUa8seQcBdXzdFefv2ijVUCsCthSOal5Wo2f4htvT6gHSUCcChEeMo4r7ARog/eiRgS
         RqaqxL8uyQXROVTCEphLCMIqHnzr0YxG2TO6H/FLl462q6D5lFAuCEqcd4V8rIxaMX4Q
         JFfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=IC5+FZST6kKbQ6wtMVOKrV4cEdk5RG4L+P9xtrQiC5g=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=RLwfTDNiB68kZoSSfwQRP5xvBSVU+j+6z7w6qU5WzwvzwukZqhjgb2ARJ/oA2o1jB2
         XKFLeWLxbrrePRHslueNtXgzzj2CALAXL0Qj/TwWul6b3n0AXEjIjr8iLcnQwhE0Ojug
         q9hUORRTgSJhwHLPqcIKzXOzALz4zpGzCR74BmAHN2T6+x3+GvAG5WPM+a/eQBowMP1g
         kt/PqpbFON0mbwmpV2LiLY3+p8ByRaE991Fr01J+37x9A7jqT7nK0fhL4X2Wj8/ZlBTL
         pyqxZRipUGMmVV/q+g5kH7D4XPqh5hNKtpi8mIB96ZxAV6ZJHpQdKDJq/l0PpABd6GWG
         kPmQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=XSm1dFZm;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.175 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id ffacd0b85a97d-432bd0e0376si369130f8f.152.2026.01.05.12.37.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 12:37:30 -0800 (PST)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.175 as permitted sender) client-ip=209.85.160.175;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-298-tkkVJdmlPzW20jl0mvjNCQ-1; Mon,
 05 Jan 2026 15:37:28 -0500
X-MC-Unique: tkkVJdmlPzW20jl0mvjNCQ-1
X-Mimecast-MFC-AGG-ID: tkkVJdmlPzW20jl0mvjNCQ_1767645447
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C23141955DC6
	for <blinux-list@gapps.redhat.com>; Mon,  5 Jan 2026 20:37:08 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id BD3DA1956053; Mon,  5 Jan 2026 20:37:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BA4AE1956048
	for <blinux-list@redhat.com>; Mon,  5 Jan 2026 20:37:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4C8711956046
	for <blinux-list@redhat.com>; Mon,  5 Jan 2026 20:37:08 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1767645427;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=IC5+FZST6kKbQ6wtMVOKrV4cEdk5RG4L+P9xtrQiC5g=;
	b=lRs6NUA8+f4+SQJFaaicZjRR/ZShL6nFO8zMVxWOG2Sz2VwOEOP8zuDJlzlDTOyKlMljQi
	X/WKDaEAsJag3dADVOIrrfq4QFl3GOl8iaIg5bLJ4iQsUBian2uiLSUdLZ35GkzvojycUB
	2MXYOmfdOR1L3D1gDtGt34JSM72AYn4ms1q51Vtv5OPLk46r1IjKsn/QFUQNFtoj29UwDh
	yqF8szbm/1qoDgZeHe9crKRNkt8oexlC8m6ru3z4hHZTBAnfJxAIQqMN4+0B/5oy2NKvCY
	MiP7fNYUGQ/dUpQ+hr7Vx4bHddmTYBhSQiltC5YPeQImus3PaQ1bUIWNc/NIjA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1767645427; a=rsa-sha256;
	cv=none;
	b=A8av6chVCtf3jYDe+9sc1Q9gUre2ZTseT76kgzg99MyHxIcFJh0a900GTdK4KEieoJlAOY
	cyq6V8w0tL+AiEo5LcuLljX9JgPM00oNnfNBeIVLOMq+qtExBUW+8RY1bXnZ3GKdHraTLQ
	ArQQ9CA88sebkmJnUrC358Dsw0p1CJFB017poWi/f4kbWxivGSGgBx5TivHP6udq5NtDqS
	b1VagBfwKcTNHmm4sIM/gn7oFGYrd7+qx+fmzdK7jzHLbFzGkbOpZtKVekR6hooRdWqK11
	gSrmNz7D/p5ZcT4rnUyYHWcW6RHhkC1YLPRwkivcIDv16Kib5al+szKatVjofA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=XSm1dFZm;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.175 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-659-wFTOK7c3Mvq4ZiA2eTjvUw-1; Mon, 05 Jan 2026 15:37:06 -0500
X-MC-Unique: wFTOK7c3Mvq4ZiA2eTjvUw-1
X-Mimecast-MFC-AGG-ID: wFTOK7c3Mvq4ZiA2eTjvUw_1767645425
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-4ed7024c8c5so2298131cf.3
        for <blinux-list@redhat.com>; Mon, 05 Jan 2026 12:37:05 -0800 (PST)
X-Gm-Gg: AY/fxX6SAOvvx8LHTiV9dP/Ffqc7whr5ehdmRfHOUfeIMRPPQlQCElOI6JIg59Vgj/0
	gHpt2s4L7QkRMr2268ajQPMU83WNLZ9cdu8FVnGZ+vTyZuPPIyj0lZzvbhAxhycxji4G3y3R6FR
	FBTuQJvFzpuLK7kmFfgkW2r7m02YYjWkPKjxz0j+dapws7ValVzh92yKxD0ga6KOv8uVWOh9E28
	aCPV4PzcszVZebjNIvr8VEwb8GllEQGTdE3uEH+n/NbZAFwkal1SNv71TaWdsQJaaN5kYVrlgiA
	ypLDQuH3sKEEda75KQ5HytgbBidUMmX9lPIDH/M8d6F5g0wgjx56JWgTJU3BW/JjxbmFRtt1uxu
	UOxtlbbxj5U3w3zxp+ECzPuJOe2oeRqsmsLa3Su0Pom9X0j8TgXy7Vg4nkBy8WzLEr/8fG6fZEs
	CWY04E20MXRWsI4TZ2TKjlKWteSat1ZXV7GEw6gJTaa6wvEvjF+KETru7sv3gYfQc5lYTKiIC3u
	qHkvoR4tcbb8k2RiQ5/XIxP9U8=
X-Received: by 2002:ac8:5d13:0:b0:4f1:b795:18bc with SMTP id d75a77b69052e-4ffa77f40cdmr11044411cf.64.1767645424870;
        Mon, 05 Jan 2026 12:37:04 -0800 (PST)
Received: from [192.168.4.30] (63-142-94-63-142-94-164.cpe.sparklight.net. [63.142.94.164])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ffa8c00acesm1051271cf.0.2026.01.05.12.37.04
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 12:37:04 -0800 (PST)
Message-ID: <2f9d3b89-eb42-4dac-820f-568c9d2a851d@gmail.com>
Date: Mon, 5 Jan 2026 14:37:02 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: vojtux_43
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <fb6ed94a-668d-47ac-a86d-190ece52d55f@protonmail.com>
 <6de1a01b-3d7d-454e-a633-1e4044fc9801@gmail.com>
 <6fddcc0e-caec-42cb-b602-8df63068ae0b@gmx.it>
 <495c0d47-4455-4c74-a1f8-1648f290048a@gmail.com> <E1vbeKX-000sRo-2r@lapcust>
 <0188d089-4f53-4d9c-a1c7-dd70183a6b50@gmail.com> <E1vccRR-0000p5-2t@lapcust>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <E1vccRR-0000p5-2t@lapcust>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: CkMmbdhjMHImIcT6ZiIFAYu3ULmsP9tMUezfHUcL6FA_1767645425
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=XSm1dFZm;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 jackson.rodney.1970@gmail.com designates 209.85.160.175 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

Artur Rutkowski,

yes, does not make since to me either. but i am glad it is working.

I was tired of it yelling at me. lol!

Rodney

On 1/4/2026 22:43, Artur Rutkowski wrote:
> Hi Rodney,
>
> I am supprised that changing display manager affects the volume but it is good to know. Thank you for info.
>
> --
> Artur Rutkowski
>
> https://www.youtube.com/watch?v=GxbstiD8hM8&list=PLKH67XJTusY6jSokJhZgD_NsBmmIpUvet

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

