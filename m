Return-Path: <blinux-list+bncBCLPHQH4XEIRBGVRRW3AMGQEX5ZOQQY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AF0956D70
	for <lists+blinux-list@lfdr.de>; Mon, 19 Aug 2024 16:37:16 +0200 (CEST)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5c41e975e5asf3975792eaf.0
        for <lists+blinux-list@lfdr.de>; Mon, 19 Aug 2024 07:37:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724078234; cv=pass;
        d=google.com; s=arc-20160816;
        b=BwHoQtHp+uau96gKrXCXPv2qREGz/riXtzzfNonZfuqNIlVAh5f4Ygm9tpsBZckTIm
         e4J6rA4Y1CXyNYj/9jaTC6JurSLCq2ncoNI9CBonmig9TFqcCvoMAwcntaspD3YEyVCY
         W9DujmmqqSvYBafaWLDvGNRD3+SNHjoCb8FUSg9QgyPoaVLgbJ/FGZc+7x/aQ5Wc9xfO
         E6mGME+wHXxVrPR8Fh43Zp4Im92CkQq41vWYIwvGM69WrtmwSEPRKY/U76tzyQsOpXzq
         wyE04NndkaEUaSj4VAGb87awSCZd0mJbtFRXoj/Kz4REOslr04dYWJxg0TyDLgLtlm3L
         2RTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=jDq4dolz2vU8Xk41qPk0r0yBZm1xnlvn/qFsCaH2gok=;
        fh=J2GCAYmy7Lu5luVdKis1wBJpxXRm7Meypcdp3mR4/Ro=;
        b=pDQkgYb30uvzsPZnb45YX9AjSMOQfgv69z8B5UourMRxg7BOzWZX9UDMPZMrsLxJnG
         VCsM9a7Jt3aPrwZz7U+fHStZ5Tuu8C39rdkuxDsJ5UThktfnvZL0dlYaac5yJ6U9LRqB
         cLHmJN3paGDxsttqQ55omiSGbCP/bjJrVSJWBufF+dj+ZbD9zcYej2ohsFTjKLWSu8SL
         g196l1abLmAt1gc75E01WdP9Ge/ClQ145TXH7iB61SquTz580Kdxv18nvy5rCAJ62RjR
         jFCCt8CEJi7iD9A3a0ag80PIpFxdLBvNWEXiGwUJH/EYc85/AnrVWUUnvgosDOxfCmq9
         twxQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724078234; x=1724683034;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jDq4dolz2vU8Xk41qPk0r0yBZm1xnlvn/qFsCaH2gok=;
        b=l57oQRbInOcZd2DNaY9NUvNUh+if5pjML/lg9cVDDnCT0nEydC+H0SrMeV2ZWlbz02
         3+JOmapJovGrksdaqPVxD3r6sX6Ma5p88q9V5GAas5CyLxCgdb2dYWZ6QMaz88DS7MJZ
         i3WLbE4fgDzC++HbjZnvAFeVJGxoaSTjfrh3QOmZnZNv9ynyxcSFYUD/B40om/aDZics
         +FvzLSUziGvMbzvWA5t2bepPcy1wSHxOCGh5EXucMdF8f8PhKyL5DG63KFHEVXvfTWL0
         6YHhTCOIl/Id052cV81/yYaCD2tl4bIwFS5E6+rtoZpoILdKVIsg6MLIy/r9rNS/k4/B
         NlHg==
X-Forwarded-Encrypted: i=2; AJvYcCW9Ywswnlph2S/9Puq1pxZ7ITMOMDrmgoSL4E0+3Dvp9HbhdCPrxzp2LwMg6+FGON/gtoM7tQ==@lfdr.de
X-Gm-Message-State: AOJu0YwyuMGf50vA18VdE08W6v89G5/vyuDNF/j3Zio0sOMMkqsb1+VU
	jHYoDEVYrz1K7grlnNgPvq9pnLo5rlBzAdf6kFoT6s5YbYVpIbVKr4DzIJQKi/w=
X-Google-Smtp-Source: AGHT+IHSFHw0RLdwbq579G8FJGWK5EEa7//UHDos8AdrrNF+vwIYcTnsWKhK5uqHGMGjSNsiNd+7rg==
X-Received: by 2002:a05:6820:214:b0:5da:b4d8:7723 with SMTP id 006d021491bc7-5dab4d87791mr5704118eaf.1.1724078234404;
        Mon, 19 Aug 2024 07:37:14 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6820:621:b0:5da:9e7c:454e with SMTP id
 006d021491bc7-5da9e7c47f9ls567791eaf.2.-pod-prod-03-us; Mon, 19 Aug 2024
 07:37:13 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW//GtFRZTRWtblf6W9wQVCQmBINpwbKSI9sOAncRoesyqahL8eg7m5mxoTQsjhLBbfTBZivj55NLFb7A==@gapps.redhat.com
X-Received: by 2002:a05:6830:668a:b0:703:5c50:82e2 with SMTP id 46e09a7af769-70cac857a04mr13950401a34.16.1724078233345;
        Mon, 19 Aug 2024 07:37:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724078233; cv=none;
        d=google.com; s=arc-20160816;
        b=pcb7RxizFmxVDiMWxhNFGbhOG79QjGCtDuZkDgtzKq2Bn0tsXi/MpwuSWr7UBt8h8v
         fuMCfHJvHKgw647Rangjb3dX9zV6jrIAt/gQ2u8xec4Ua348EiCQV6710jPOF5kAGtMa
         iJJcTS3gm60136wXXr3zvGMVKm7fZvk4/URGfiAG5ky2lKUPLwPxnPOPe69tc9SN+ys9
         WovXQMVXdnY65t9DXYnEIbqk23LB+v8HPni27u2g7FF7cVOk3MBKi8cPp8+3lxoXpSVa
         5ctiZQUV/iS2T0XfVCEvOmYXW9VBOD/HozqjJJfRIJGKfT1QUzP+qaz3Yra3wNsqq6/S
         MdUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=vfVnc/+eOE6ftdV4KjV8jsz/8Rqx6zOBU7UPu6cxVTg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=wUuWcNfCq7szXRUUt9hQ0jFOlCt9mpXBJdcgR/CVA4kI9J464JFIDnpuhNaGdvqkrz
         QFEphsbbNayAeamQHhVIxmoOPkrcZWRgzf3RhHZFDRKFhw+WC1b6WqakkC9n6hFUPDdv
         xFTtfK0xEO0GvUehiRs0rJfan9uWGQcKXVy24E9KsbAKekEn6J13/OtOrv8A3x5TXVOw
         YiAo/Kr2hC/1ZkiSzMZOQSIBsaIJumzn8UO0qQWcgyMCo+QXrkOgWYUt6h6H4B/og9hg
         ZzdTyRF3a6mIVe4SwplnTwQzrbVbFGG+pTqx9A+uBFcAoCTrNqRJ0cZ10gin3s7OKblO
         lm0A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bf6fec17ddsi108907486d6.281.2024.08.19.07.37.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 07:37:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-651-UVIkeBegM4uy3CEQUS83uQ-1; Mon,
 19 Aug 2024 10:37:10 -0400
X-MC-Unique: UVIkeBegM4uy3CEQUS83uQ-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D309B1955BF1
	for <blinux-list@gapps.redhat.com>; Mon, 19 Aug 2024 14:37:09 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CD82919773E7; Mon, 19 Aug 2024 14:37:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CA7E719773E6
	for <blinux-list@redhat.com>; Mon, 19 Aug 2024 14:37:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5FE851954B2C
	for <blinux-list@redhat.com>; Mon, 19 Aug 2024 14:37:09 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-584-unhtUyfMPUym7HJIuYwIqQ-1; Mon,
 19 Aug 2024 10:37:05 -0400
X-MC-Unique: unhtUyfMPUym7HJIuYwIqQ-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id CEEDD3206A
	for <blinux-list@redhat.com>; Mon, 19 Aug 2024 14:37:04 +0000 (UTC)
Message-ID: <e34ff140-24f8-430a-bb0a-8df7554ec94e@jasonjgw.net>
Date: Mon, 19 Aug 2024 10:37:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: temporarily making /dev/sdb1 read-write
To: blinux-list@redhat.com
References: <99ac0a69-8df4-c2d5-052f-e27b06eb9a11@panix.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <99ac0a69-8df4-c2d5-052f-e27b06eb9a11@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Type: multipart/alternative;
 boundary="------------vNCmBFKR1Pst44NIkG20MqHv"
Content-Language: en-US, en-AU-large, en-US-large
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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

This is a multi-part message in MIME format.
--------------vNCmBFKR1Pst44NIkG20MqHv
Content-Type: text/plain; charset="UTF-8"; format=flowed


On 19/8/24 09:40, Jude DaShiell wrote:
> The adriane-knoppix
> torrent produces a 7mb file that no longer works on modern hardware and if
> I cannot get this working with knoppix I'm going to write this
> distribution off as accessibility vaporware and move on.
I haven't heard of this one for years. If there isn't a recent release, 
then moving on might well be the best strategy, unless you want to run 
old distributions just for fun. (In the latter case, maybe a virtual 
machine would work better.)

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------vNCmBFKR1Pst44NIkG20MqHv
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 19/8/24 09:40, Jude DaShiell wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:99ac0a69-8df4-c2d5-052f-e27b06eb9a11@panix.com">
      <pre>The adriane-knoppix
torrent produces a 7mb file that no longer works on modern hardware and if
I cannot get this working with knoppix I'm going to write this
distribution off as accessibility vaporware and move on.</pre>
    </blockquote>
    I haven't heard of this one for years. If there isn't a recent
    release, then moving on might well be the best strategy, unless you
    want to run old distributions just for fun. (In the latter case,
    maybe a virtual machine would work better.)<br>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------vNCmBFKR1Pst44NIkG20MqHv--

