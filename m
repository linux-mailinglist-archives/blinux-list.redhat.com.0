Return-Path: <blinux-list+bncBDYIZZNASAHRBGVERTBQMGQE4OLPAWA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mail.lfdr.de (Postfix) with ESMTPS id A73CCAEEA87
	for <lists+blinux-list@lfdr.de>; Tue,  1 Jul 2025 00:39:24 +0200 (CEST)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d399070cecsf568104785a.3
        for <lists+blinux-list@lfdr.de>; Mon, 30 Jun 2025 15:39:24 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751323163; cv=pass;
        d=google.com; s=arc-20240605;
        b=J1yQHavIEAP/bqvOv2a66huadYds234BcykJjaEFSab3pLOWYCr4KQJkME1a+sgbAT
         VPbXbAS4/mKM2wbOOtqxsuFJlEra/R8VamD8DtYjTjel4clESFeVXBd7knFKE2cVIzRs
         xCqLx3IWv+5n090YfVfTu3EkHVx3bOIyVL17zxoQuOTtlwvWgdwCKtGg2nrxwYjl/SPN
         Z5BD4qtMZjfETvVhghluYDJoK/dXa6TqoCeIrSOMuSFsnA/DX1AbB5jXVavBPiFU81/8
         3mzHCDgVgCHTvoGjR5FAv1zM7rsgzNMwJBM+9PRTQoAtTIp6atUCSKLiS6aXcQ5CIUkv
         OaCg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=kFmLBaiDi1Lak6UaUVoV9mIlAcdwM7Xvyy1PU/cl6MY=;
        fh=5C+E3nlDmtozDjNpErKmTs75Qji5SR1ZdlMg7GY9WIc=;
        b=YWFEFEOk/5REMSzI+ptqjT010jcqCSeu5I0w+pm5Wy9fu/veyPND/mrFcpGWNH/Xwm
         OFh5eIMBWnVABql51VeD3aVgoS70TrWwFuPGfHnliDP5qWmbqGvHbDiwgDpsGw7VR7Gd
         2wZqEpaodfr/u+KSzdg/YZdBAmX0g/EFjLampc94PJZKDQzp9/lDnXFf26o1RnEIA9lO
         DusA2k2wg/8c0/zWlzsHvmrlxyhCfJE7DflDceI4kkfB8bKzGKurtbsOeSbhzQTu4huh
         wwfwJ9XBW9h/ZaJITMlrMjy/Rm71HjWJjUftF+uyncqEs3J9cDP9YS5ywPAXtqblvfuQ
         1u7w==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=lqqCa1zO;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.161.44 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751323163; x=1751927963;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kFmLBaiDi1Lak6UaUVoV9mIlAcdwM7Xvyy1PU/cl6MY=;
        b=vxOs3rcB7XNhgn3aJ/ulsi8dH9zo8e/Lev8f1scsILZmObNG2bP2SMsrmmvP5Nd1x5
         fThEc9OZRfd5dU2+AkCI5ODQDsG17aFb9vIu3sssv9k5KgkSLVI7PIQ7LiaexkqUHuND
         Rb5ImO2q4TEn6Vl/HqC3wI/JpCKKZZVryF0vZrs03KRpSjYM6biIUA85Lh77MNyjA0yz
         5ZKiBLDnReSrVkWs0tf1jCFNGwu/SnthS8WLbou/yrhGLwtOIMUB7VSpHG0Oykqnaeld
         EI08D9zM/KVDc6WRyN0LrV7ayOftB2iMM+FLDnvsAJAQgSIRYcnkO6yAy2WJCAppnghp
         4WCw==
X-Forwarded-Encrypted: i=3; AJvYcCXInEYIeqDJ3ybklUOih+Wsj2bJMZkpplegYthAigRz2lV+KXskG3SM1VyvxbcKTqiXg1PVXg==@lfdr.de
X-Gm-Message-State: AOJu0YyWUBcLk0vt2H5jJM7K0l69xh/hjbqgbvQoVwWNQw7DMAlLNdvs
	i8BHYDyPk1s7wx9Bb3ided0+5+iW0J7xclQed+UTXABD97XCbm36p29huqqFnOgJs6g=
X-Google-Smtp-Source: AGHT+IGBgBDb+u/sdl7P3ulWoSe2ZfB6u5zWJn926AKRt4BM1YTzpTFxob0i6+e84jw0e0i/USBSww==
X-Received: by 2002:a05:620a:24cf:b0:7d2:1930:52a4 with SMTP id af79cd13be357-7d44398045emr2084018385a.46.1751323162876;
        Mon, 30 Jun 2025 15:39:22 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZd5j54VCdBc4qgAzez0cDnNP0Fa3LMT9X0CFx2pKSw+cg==
Received: by 2002:a05:6214:21a5:b0:6f8:b50c:910 with SMTP id
 6a1803df08f44-6fd750a97f3ls87237026d6.2.-pod-prod-09-us; Mon, 30 Jun 2025
 15:39:21 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVh+sm9LvzNqoE3kjZTJklzXhh38y/Hjgdg6ne6LaqyERW8lwTr22RcnVDbTa6HgIjKBD9+7z2tRroHZA==@gapps.redhat.com
X-Received: by 2002:a05:620a:4495:b0:7d3:ed55:c92b with SMTP id af79cd13be357-7d443971e71mr2091671985a.38.1751323161686;
        Mon, 30 Jun 2025 15:39:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751323161; cv=pass;
        d=google.com; s=arc-20240605;
        b=XP8krF8cACkD2cse79uxCh164Ehnh4IqTuQ9m/QtiObaRlPOh1spTZI5j2XB+z66UI
         jy+JF4+Hv4n0Ux8n9hEzBLPhR/+pwd2VJXMQ39TX1ZsqyglyEwwVpfx8mrXFfk+QKT91
         6U9ee0DMytHP/y4K+X90AUjKWFHR0eVk8eYt4X72Xz/QcS5bvb74uImVUMBfzSumjVjF
         AK2zl8nImeuRwAv1uSyu85bul3cy7ZqBnUfLY9gu0F2yBrfKygWZwpN8ZADNwNFFgG0f
         KJj1JC5lHa+H39fgagFZpsPSGLAEK5rYKQeJt4/oMjwdN9gh8O/bRBU1wz1oG6xZUtIO
         fpvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=6vPgxWMv2IcAuFwD2eFwUt6u8arUXqYkk+H0LrLMi2E=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Qn1lve0y3ksChpLOa/9PhvuSpWbAU/JYBw8pqNMCTv8Hpx0VuyQQaTDuTzzcVPOWcz
         KIgACXEWJkCubFgg/LFp2KmZ4wuwDT71g2uiD0Qsh8+Q3x8lambxTsFsEA1XlLaSExmk
         kvsMDbIFtJltMaoQlIrH5MS5cvdNbQN/4eDwhfowj9S/pbL1dNtOK7wuG8yUh4kL/Yyv
         Kc2S2kZtMfSsZZuC2vTxh0FFLjEx3ao2lAKX4A/hzgaGh54GYXDv15caVSIFyEc8ZmeC
         ZzPkhjOw+KGvFbjmOPlorjJ8y6+YZPPJLDZjt4KBZ2MbmQdJ2MnA17uUlPf99oPmXvRX
         1ssA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=lqqCa1zO;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.161.44 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7d443228ec4si869054685a.250.2025.06.30.15.39.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 15:39:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.161.44 as permitted sender) client-ip=209.85.161.44;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-303-zM8n1YpMP1OHPL0gtxfS8g-1; Mon,
 30 Jun 2025 18:39:20 -0400
X-MC-Unique: zM8n1YpMP1OHPL0gtxfS8g-1
X-Mimecast-MFC-AGG-ID: zM8n1YpMP1OHPL0gtxfS8g_1751323159
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3EA5119560B9
	for <blinux-list@gapps.redhat.com>; Mon, 30 Jun 2025 22:39:19 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 39F3C19560B0; Mon, 30 Jun 2025 22:39:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3716819560AB
	for <blinux-list@redhat.com>; Mon, 30 Jun 2025 22:39:19 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CA7F11800287
	for <blinux-list@redhat.com>; Mon, 30 Jun 2025 22:39:18 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751323158;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=6vPgxWMv2IcAuFwD2eFwUt6u8arUXqYkk+H0LrLMi2E=;
	b=TU0CMCSvUw0oQyyb3m6HcMT9TS11chT36c5RQ8fjINr5bMi2ZMtpzCHtfG3QkuxWF7x0VX
	Q56paxWWTrQXjv96wqmG3MzFUUF0Dba/kgI0QAAhb5v9pQoEuFFTxyR9HpOjCR/gn3bQAo
	6Ma9ENSrKSFViKJCYTPMyt+3DBMZp17XLdQ+A3n9uUPEGO9R74ZjvlItqz9XVW9pm0y6F6
	GWSVJ4Wbr95VmCt0Q1QwHLt9rfEc/AKtaJWBQxGKNVFxHL4r0Leb+UkdLjch+ozGpgLs3K
	HZXyn6Jr3sxOWXCosTVFJYYDKDBDGHJQzFjxZICuWq70J/MrG8btv3bZRzRlfQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751323158; a=rsa-sha256;
	cv=none;
	b=kWqmrAXzeUd3ossesvYvO6TeXauP4lRnHBb6eOz/LQWruQeqGSGuY5tZeGSctHHPF+2BQt
	IgAi9/3MZPg+oIQcM76wvYrkv3/pxRjFakJ1lVQVbiUu62U9W1D5AVJ+Bv6ntP/NL8eyub
	RKYgRnQsqZgCGUK3eeTG0+8hkamkuCr32PcNp9GaMiZ+9iI1nDVQifC2Yr6o/pWeE8hT21
	e5kp7FAuenzeD4mlfE7RfYKrozHzJ/0EDauxuuc6iVAmztEq2BVf39wUWUC+2Oek1gOFhN
	F/sMcKWM/A9PvmbfKW3T+dYbd5F8lUh2JKupmDLyTD9WGnMvgum6NTg2L3moeg==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=lqqCa1zO;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of jackson.rodney.1970@gmail.com designates 209.85.161.44 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com
 [209.85.161.44]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-589-uE4L6E8IOESD7GZIxm-XrA-1; Mon, 30 Jun 2025 18:39:13 -0400
X-MC-Unique: uE4L6E8IOESD7GZIxm-XrA-1
X-Mimecast-MFC-AGG-ID: uE4L6E8IOESD7GZIxm-XrA_1751323153
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-60f276c7313so1667817eaf.2
        for <blinux-list@redhat.com>; Mon, 30 Jun 2025 15:39:13 -0700 (PDT)
X-Gm-Gg: ASbGncu7Qmt4yCqZJPSdnGc4nxKxIklNkR6dQUk2404Ex8O7KPg50r6VITXLTH3gv2b
	oDOti2W0Si1TspG/5KNpu6R6cT9wXSZ7+32ISTAETkl+5h50A6je7WPDEQvELCd2ZWfLtIWG+Ve
	2I8UH8bG8e63ElWWVJ5MRpZwXVSYcRlSl1C1b8gYb1Q0I8TsigATAva6zg6rBD2WdBwYJzKWIxY
	LGNtz5FuzVvNRHALET7gI3i9gFQEKTGcUWut/6aEyGKrC7aOm/yV0OMbuJ4jASK/hS2iXLTvJOY
	Pf5RNkLBnqpWKvd1G3QiP/sFflFIIx3gnz0WCIwNSt9guurEugVCVJUKOxCSOO6pCRJ8FpXO+WO
	8BKEQZ+hFh8iHm8+BKiKJAl1DuHsRieXS7tjqXhhE5MDQH++svoI/Ce9AsACRPi/vng==
X-Received: by 2002:a05:6871:7586:b0:2ea:1e55:834e with SMTP id 586e51a60fabf-2efed6849f3mr10701845fac.22.1751323150230;
        Mon, 30 Jun 2025 15:39:10 -0700 (PDT)
Received: from [192.168.4.160] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2efd50b20dfsm2925054fac.25.2025.06.30.15.39.09
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 15:39:09 -0700 (PDT)
Message-ID: <62ade77d-ec43-4b39-94ef-c52bace6b83d@gmail.com>
Date: Mon, 30 Jun 2025 17:39:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: drive permissions
To: blinux-list@redhat.com
References: <405C1BA8-06F4-447E-9027-1C5AEAA63742@gmail.com>
 <c1e3cee6-2e13-4aba-8931-6adfc383cee0@mail.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <c1e3cee6-2e13-4aba-8931-6adfc383cee0@mail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: bz-NndR4lh2xlqHCuprNTkrL4Xiur4__SmW2-e9eESw_1751323153
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=lqqCa1zO;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 jackson.rodney.1970@gmail.com designates 209.85.161.44 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

I have a computer running Arch with the mate desktop.

it has a 2TB SSD and a 2TB HDD

the hdd i use to store any data.=C2=A0 Recently i had and issue with it.=C2=
=A0=20
this drive was formated using NTFS which I read sometimes can have=20
issues with linux.

So last night i used gparted and repartitioned it using ext4.

Now the drive I can mount however when trying to copy data=C2=A0 to it it=
=20
says i do not have permission to write data to this drive.

so how can i take ownership of this drive or change permissions so i can=20
put data onto it?

I do not remember it being this difficult with mint.

any help would be greatly appreciated.

Rodney


To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

