Return-Path: <blinux-list+bncBCV3N6GOXMCRB64K6LFAMGQEI2UPS2Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEADCF69EB
	for <lists+blinux-list@lfdr.de>; Tue, 06 Jan 2026 04:46:05 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-88a34f64f5esf17696026d6.1
        for <lists+blinux-list@lfdr.de>; Mon, 05 Jan 2026 19:46:05 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1767671164; cv=pass;
        d=google.com; s=arc-20240605;
        b=C/ryEjy+9VCMxrYVpnEePfjd4qUU7rCRa0HQOToq5yMWHAaESy5+9rG2UC6q2twxHM
         UhgPwO5ZDD9/fXQIInIdopXz2+htK6JX/LBtic++eL8kXrVELyOIrhSjt88Kk2exEnbo
         f+7qAJ1g2dkQA1s+jDj0ZD7n1ayvQWPzlWhbw/QduJi3xatPrNaDuQAhkPo+V3n2pNLa
         sCrSe7pWw4MdRYQd26ekoBrHIxo1yjA4zd7DIaQYuHIkhJtizuh+zmjF6o7KMcQYqpHX
         K53/4ct7DOkVKc5Ym7+1CWGPd4W++fOyZTsD6IOgY+akrPD0AIqcbi6ZL/UeJp9O18TF
         qdEQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:dkim-signature;
        bh=8+D0uYfyaH4MrUTA70u1ZKrXYXgkHRMMRhlC4s7k9Sg=;
        fh=hGXyXRjBB4iiMT+0m6hUkHVcoi8NEXtMuSaD/rIBE6w=;
        b=Q6ENN61W0FVlXQewsJojEh688GssMi6caZmg/OI8x9oBkOVOBgVyrE6XNw45tycuL3
         N/n8Yt/9+arFC7Mn5dXaZKsKCvH1zmNPnvGK0rPGXFxGhb4mFOO7HcHMgbKekLceemNG
         +j+LsTEh2buoKzzvduhgfurx09Q99HMqQMO6l7kgg1ZFvkL5EU5q5+6mlg3oAp+riHbC
         uyv/uu9mElVmnCnMLeFL9MZQ7ZO3vgpp426c8gWmuI2409mzYA7HceBNcVW0jX9onh1Q
         N6tHQOkSaoEsH5JBUdESrAFlWg9OmytFuN3lbFRDHnMsWm+74vydg+sjRlF9gNKaXZjY
         1Pwg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmx.it header.s=s31663417 header.b="G2/vHOLV";
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass fromdomain=gmx.it);
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767671164; x=1768275964; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-language:ui-outboundreport:in-reply-to
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:from:to:cc:subject:date:message-id:reply-to;
        bh=8+D0uYfyaH4MrUTA70u1ZKrXYXgkHRMMRhlC4s7k9Sg=;
        b=i+i5OyrToqbyk3C5tv/DkUh7PzvR5jLSap6zP/+CPmMfnQSQ/UyGFPCvUZRPN6tIqk
         AtDuZMeh//fxVUzaMwEtMrEcuY6N9tFOPqQE4IN4O2RG2zDKFW+YVXzUU/2uA702AM+4
         hf6yd5Q25eqJ2rJmrR/JRaOfJEzolY5fgqUBaoDtRJIMD5L484uLoellj1zL3i8w4928
         z+dFllf0dIi6rZFEIIwjrW+JEi1tuQ/gm7VyMtB2EVktmECxZ8ix1YYIkwfjs8/BTXkI
         gvUH+qwgUrx7XzYksJ4MkKRgw2M02rZI9q2QUoFcrgrinFPgBFai9AflE4wyeF2Mr2qI
         g8gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767671164; x=1768275964;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8+D0uYfyaH4MrUTA70u1ZKrXYXgkHRMMRhlC4s7k9Sg=;
        b=bU5JiYEEYd/p++sJdUSiDCq94h7XpJn6+CazLFUQw347ZMovFNq6J1Hp7amjIO8MZV
         uIoNCuFqfE8bIYDhst/nF5El/XNXT9kLJMU/r1oZBRMY03CsA5MyxWVFJG9s5MvaIaQB
         RwO+jclpnsM2igObys7+QpMhe31SFgZ67Ml0x1/fJh18B11EoLeuxSxP0it0hU77iJGx
         LWfVYDe1YDu0AS1kEYYpBh1EsyVFRq491i5u1563TmqNp147O7qRPOmDsWDTPrkWiu/b
         X+jkrlvbIFPvN111YlxBnKhEqbeDlOdPD62JdrlA7hlxeMPAhy3qQIpq4i48lA2kz8Sq
         zVDQ==
X-Forwarded-Encrypted: i=3; AJvYcCVVHf7yiYnIz2o6bjIS5qY0GntbivClyAi4GYA4oFKpei+/IB53DzLUunUuB756+LkPfz3bfQ==@lfdr.de
X-Gm-Message-State: AOJu0Ywn9LAHCqPE85mEHVKLOFqgmtlMofv64IypMWAbEsY4BJC+/3qC
	04nrxuK2yvJU5/S2oBYapwXTIx1WfJtzz12tWOkLoBWl1+Lrm3Guo0gwnV3vGRZ/DbM=
X-Google-Smtp-Source: AGHT+IFnODE1uHf8czHaEJmdcaN96iV9rgLndZ+3DT2CuvDE4994k1ppm/uUD72h7YnjRggKutIB2g==
X-Received: by 2002:a05:6214:4808:b0:880:5883:4d24 with SMTP id 6a1803df08f44-890769a92f9mr16570726d6.9.1767671163903;
        Mon, 05 Jan 2026 19:46:03 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AWVwgWZv9mNHQnefAmWFBJWViJH5XiS43T4SZnurLXKR6Nfs0g=="
Received: by 2002:a05:6214:ca9:b0:888:3be8:d4e8 with SMTP id
 6a1803df08f44-890756c248cls8276096d6.2.-pod-prod-00-us; Mon, 05 Jan 2026
 19:46:02 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCX7oaoBsfmSoyCVE42d2u1wxqmVdNqw4dkRFMf0oOqDf/4c2+zAwLufQ+K9ig2mk+mkiRFeYsAmSWdMsQ==@gapps.redhat.com
X-Received: by 2002:a05:6214:230c:b0:888:4930:7987 with SMTP id 6a1803df08f44-89076a0b2c2mr19431376d6.34.1767671162682;
        Mon, 05 Jan 2026 19:46:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1767671162; cv=pass;
        d=google.com; s=arc-20240605;
        b=AYPmkKH0r0QOtH2zAOsb0TBQ9rgDG86UfvRHSkVugAmaeHDRr1l5vm8FFQhyiduTN6
         hdRfpZDiN8TDj+5zPSO33fq1Yo7vMmGoPAxDL8bkesWhA+NO/hDigApLeDwMnEg/zOUz
         YyYhX+pQBtr6AoBJnpSCdTe0KOGHMpaL5o0SCNxJQWUCAHfI6bo3QeqceZJBitRcgplJ
         7tbEsdFBPKtzHUA8kV/fuOhpxDSDeTWDrcfGhq5kmXtVe3i9ISewj/2soGqt2ACVTmn4
         /pvRCr9mo580uwSQJTTzKQ7xDJ6VpxCcIKQVvACCdfGQWLPwI/j8qsxqUXJaKLv39sSD
         OYRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:delivered-to;
        bh=TWVogR8FAOgFicduuKwfmEdO4ZzjewWv5cC0tP/zUDU=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=MoNCyyL0JfjKIA5KtcXnlD3202yUwsxV1YjGi/sLJzA1dEOXW4Pykh6oGuLzMiIhfF
         vP0DUKUvkZggM1PMC9Pq0UV/Z5VlH/M4KIME3nu0xcQXBxtVV/p5A94VM38nfdGOHEqu
         RcNHDdQt6Hc3l73ddnKIRTiom2AKZLLfJ2K3JUJimzndZz6MsB5I7nJGZfpevEiBhgFo
         4ikwl0onZBLdeORoL2Q/71FElU606obSUjEhu2ivKqNr729tG5c4dgVa38yZHRvjsod2
         E/Yt9Dt9e0NxO51H3HzhH6H9HVk175zJMqSIjnNl+P+IenTvc53N/3GaJDeIm+shhefm
         12IA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmx.it header.s=s31663417 header.b="G2/vHOLV";
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass fromdomain=gmx.it);
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-89077297c0csi9600976d6.749.2026.01.05.19.46.02
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 19:46:02 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) client-ip=212.227.15.15;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-359-iRi_WiJ9PM-O1Gu8FVKR4g-1; Mon,
 05 Jan 2026 22:46:00 -0500
X-MC-Unique: iRi_WiJ9PM-O1Gu8FVKR4g-1
X-Mimecast-MFC-AGG-ID: iRi_WiJ9PM-O1Gu8FVKR4g_1767671160
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 16F761956080
	for <blinux-list@gapps.redhat.com>; Tue,  6 Jan 2026 03:46:00 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 126D31800367; Tue,  6 Jan 2026 03:46:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0F7B918004D8
	for <blinux-list@redhat.com>; Tue,  6 Jan 2026 03:45:59 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 944A51956080
	for <blinux-list@redhat.com>; Tue,  6 Jan 2026 03:45:59 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1767671158;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=TWVogR8FAOgFicduuKwfmEdO4ZzjewWv5cC0tP/zUDU=;
	b=nHyS2RRjkfHyUQbu5AQMxxb6CFwqOItTObKPSQZWUgx+MWTOwdw76q3rQWrMoM/pARpW3n
	CpVmTW0iQDd5s1O8DiEeyR/i9BwKb26GnM//WIZhwsswT20Wcg+lPeeUlaOYY/ygy/4kks
	+aI8FSxNiyCM216YkRDeJ7U/T4HyMPZDvWiDrwDPK/GyMliPXx8AqBbUldWr7jk0hWVK1H
	01+4UbX39rUBPj8S7WgrlrO/ksqkq73I3zZTnVigxkRXzecp2bzRbJV16eRqcLUjG5Pkm0
	jZObzLHyWXRTKimpibF5MUMtS2MCeEmUsQzXiLSReeB5xL7izVJ83M75cgNppA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1767671158; a=rsa-sha256;
	cv=none;
	b=fbyFYrm8xKbiqKzvavZ/ktE9aNw+3OfgmTIKcXChSzj7lISZ1QRPTYtqVboFCuRMbXQUI+
	CocN/h8auDXBz4pgxg4OTC3/HRSEm0pl9+zimofRkwWA2P4QoXQ7oYdqCvH3JgFcHaNOI1
	DMMQAoO7hF1poyZvV3Y8lPDoeQmEq2HloFTU4S0ZnEIloZyu6BXOGgJaj2MNixqcgkg8xY
	3YJfzI+nWcufgJoIQ2sCGZ6bTtQIkFIH/4ILOu3Z0Wz4Y726Lj+uuANvRnAu772eBZ92uS
	lzxy8YeTjPlR1uTp8D99z9EZceqDMhHfLeUtdnVswKGbsRAIS5wcHFaCxtgJlw==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmx.it header.s=s31663417 header.b="G2/vHOLV";
	dmarc=pass (policy=quarantine) header.from=gmx.it;
	spf=pass (relay.mimecast.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-461-zLJv_En7Pb2FMtgWN3z6tQ-1; Mon,
 05 Jan 2026 22:45:56 -0500
X-MC-Unique: zLJv_En7Pb2FMtgWN3z6tQ-1
X-Mimecast-MFC-AGG-ID: zLJv_En7Pb2FMtgWN3z6tQ_1767671155
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.40] ([136.47.142.229]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MlNpH-1wHqCv2bHB-00ncMQ for
 <blinux-list@redhat.com>; Tue, 06 Jan 2026 04:40:53 +0100
Message-ID: <80157d3e-02aa-405f-91db-4227370b368f@gmx.it>
Date: Mon, 5 Jan 2026 22:40:50 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: jenux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <ec97e372-1d5d-4e1b-a581-d62b4ddebabe@gmail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <ec97e372-1d5d-4e1b-a581-d62b4ddebabe@gmail.com>
X-Provags-ID: V03:K1:BrOpuFb0C60yy3k77C5YRK/jXv+nA9h5Q3PUadO7FGzYaJdZX8C
 yuemKHD5Nvr0zJ/jApR4JmW2uDBjYMMkPdk4rdWXoa+JOKAZoPCXfB0aMZ9rTo35AzyYOuB
 G6n5mN1V6Gi1kRtQhq3y0cxnTzDLBYXuL+ekDCikf437opQ59sLX0CGNdwgOemKi28cq/YX
 yP3/beSJd4h/eL4MB06yg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:8Mm7LaSPRhw=;7hdPu5C5BBJkmXTQ01tsCDj6xOt
 jk0epgz8PmtCXPCa+HEsfyYL+8RsJszcJAZDlcGfNU+pItOKrSAYzVwc9HYLKmFER+E8kmmga
 aFU/oiSNTqIf3JOnLjPSTr6QolxSUoexEhu6/8DYkse8JKvsX1THAXWBv5dXGpBYEA6mWcbjk
 KfGYkwvjyndisPdVo73D/xMTsUyQPKvcis2DD7S7kE0Lv+vHYECRnGiCqmB+pNeW7oxcSUifb
 tmVDXWTQ0/eBxYncT7ncYOOCkR9DPu9pKWPeq06ge7T+RkI/cXxXQ2MLKFReEZeLI0A5Pt7pA
 mR8Q/WKqPlXm4UlgTNdVqDJk3V+NjFaOFJtk0QXvt1E+5E1ZMeXKUgiCzg8tZHJtx6+SqpecC
 6Fr2yxIlQcoqc2ICG/+lSXSbSGMOtFUn/UiIa1rpf4DDo+BVEtFBMFVXe6s+RQGApmpB1iLZC
 SxB8zbXMb+UxNQY5NsT4WoLtfsddzYIsQwdck3j7BZEX0mqfajoGDSdRaLlhZg6OuxVzKwciG
 GFI6a+75rRmhE0h4uW9db0cRvxs4RgXkSy3eVtTmGBXOgsf0BMrRPQzQ3qHig3mXNlROHw0GJ
 mFq/cil2JN3XRsuO7/lm4fADJqYrMGNPeCmh+odVttmfnHvjVaGHBuGNTsaej53F7NusQJGb2
 37dMy1NgNTGNo331qbnXqVdnO8UJfHCVDg/rJ97eELy7LfBRuSeRJM6QjZGsR7t6B1Y1K2qv3
 TW5+48HJTEA6dVJK/tUhzbVrUnYHAG6tRM3v11L/n0xJIxhMRGEXMkIV7+EGgPrsd6hNCnyNG
 4z7/XJ9uzAXxcV64CTz20l7fFz4+Z76jo6UQnqgf34NYmK9R1e1ySh27dCkzLS/yyB+dgJ0o+
 Ja674ObzR67DUhHuJ0n2iNYxv9LczkPFOTl0V5uOCEWmWhCGWseHM0s7DTx8AqtOaoyFzfaDn
 Tu2T9yW9PSEc6Y5x+N4yZAdSTWFkS3d80dtkUJcamjHW3RrP+G992+f0zLbLIldObqo5JGUe+
 xGPAoVVdzF2neTK30GgiBSvC+X1XOgC8N6LDVis9J0W0lY/ATKKuzXC2HjTk6grHRyVKMTnlU
 zdlTtqiBsBQzWpyWZIM1bs4Y/T6m4PI8YaRfYQ+ltwXo/oCKOYFxoXXzS3LbYTvnfwBt2n7Mo
 v8ctqSU3XkJn8Z4GRlxFszYWtCfKGIkT50Tl1zk+lt4dEs9xjxJsgLBuoJjagdSvgl3xIoPMI
 lrgLZfbphXZdhN/vcv8P3HyWtHJ9uRDJbysE34q/typv9h36o7iU8qgm49rmmRANq4HhNy4tM
 HU9OJZFYVnghoeAaPAPRZXV/UATB8C/PaP51Pb5MiZSYUvkLGAQdXbCAegS/gqU6G6xT5Qt1z
 kHOTSkJerIaQoLRHvRVtSmJhbqNcqH/34Ki9LxMGhqabfVGVpxZFJizAffjhu5xTjdaI/z1/4
 iRZW/pPpOBm+Filrw2w+oc9s+ciCzgCOgnfPtKG4IBnZeKLyS+s4mzTG4Msl5L1oXJWub3oEi
 INTY4l6WtgADsi5xN8wu3ZMpDOnK7u9Abnh/XMLozYHaV+IkDb4MKHnBR1QtK/1Z2zsB8uXL8
 qf58FWU9NvnEPwLkYl0IcVPqPCigBpw14Ux0swJywEjw9zKRcxwzgWbgzVkQSQr7XzwVAR6/3
 U4Xb2eLjQ44+HSgLpHt/EfUWd6D6xwq8jMKGzdeD/xz0JQn7DJNWnrX1aqPxWEdNbE5xT6uPj
 WJcELntL0uoPqwHIm9FfrRTTtpfqHMWxip+hHcIQ/sNeVr0lqoTv1FCxEo90jVpKFmyePEaSU
 zG0LNZtOtjKE8bgV7MWmB1lw0mBGA0lM/L1C/Iccwwd/Aov4eMJq1A9Ub5r+c+9wDbKYyahuz
 kllUtmckNyep16S//qDEh5GQdADHB7B263/Ieex4iyxe7m6IXNb5VIQriDmXhA2jEvndTSpxH
 EW3myK+CxqfBq24y/0s0XzsSElOMvXafyQvk5kt53uZxuRo5dh+7PS+uhK7XgYSgv1Hq4VG6t
 Qzr7cTCDPa/7C8ZtOLArWLRI40+sQu4Mwoe917u8sDPiJyRIY70bh8q4VMfUyFV0ejJfzyS6C
 4yCzh6cnH+GMMgQ/wZ32vQyfmes1WksEt9e+eGrGuR9l0EF5u+1BDN/CPQvdCUI2aW/FpkdnT
 gnGiIo69b4/ct/uxbtiiQAr0Nl6r6DcLd84Mxh9C25OfsBMIoACyaxz0mhbelwMVFkL6NBcZd
 zbWFXDhCEwqZMwJ0C1T6ZAqHfvux5UQaU5TXCXFZ2X81w2ZN1gKeBXLCIvyoPdomrSKQl3joz
 QxuxWyIok1e/P21nIaBKyOCH/LskSb0wNkGVn+zGVDYKjFu5j2NC7wtPxnooLWKDmG3DULCi8
 9FMy56SrIVa2p3BlCsPkBwn4U9yadtCleHrBAlIvvak6D1Gqboq25PTxRwKv7t30GfCGNj0eX
 dUCE5RdC5YEL0FAGRnzSGvql7sCmOVYkQFwbdc7glTxq/FS6b22GFNpNrfjKVJJhIIEymbc5M
 38FEpzHiiTz9VK9OlPuVI7LdFEJW7oGwjuu02oNWN22FylagpyN05zlEg8qztUBGRVhMCurbi
 I0ygRx/XP3JaftopVhJh3Rh5ZEIRw5m69fdYpmBQD8+xTlRDiNmM9lu/jfVVKdWkjqHr44poh
 smDYrxRYf6WEVxcDfEPIVSGQ/VWAQ91Wb19cgLTpMG2UN6SLjgMCBCoWEExecVYCQDoL/4VKv
 kS6Kf2seXNHjkQ96LpdF5JoYKjHT38oo2GKTTCTRzDj8ZpMyDq+1an7G2Cl0hzuwjlC4KVrXC
 18qOjdcgD3qXiAbUALuw6SUY4tn75604/WqZKz1e8gKrk/nar32DZUS65WHU0OhwslONoiXXV
 dZAOrwmdfPC+KvrakJHuNgaggcZCNfgaTVhkX749ZqGimzhrxcfUsrz8bQ2o/e97EwBva3XxI
 DoxU92zhYtQwKqrJeGCKIzswAEd1AY2OMOrcko91lq3E2prcZ8N1sgyfFL+nd4gfPgvf17yoF
 5z8U3Hfg9z3w633Ld4VatI8+L69H4S7rIhj7s3XvAjARBNdVm0iEqKEQY151/GDvlV773kGu2
 LKqAaNpO35rWICNyQnm277LOjuZ82gre6ZBUyfGweS7kP5/c1dD12/u8v4lLMn0A5wvmepqoF
 LauGxhkqjzwU/Koi7OSA4V5i9fStkSXzKxh8ZUMmdHSa4pteYBjqImzYWM4IW9nnG5QAlq7sI
 Q6C2TWgS/jtJii/L0XiFT2rWeUCwQv44WCuXpBGbAqmtBtFY1W+O3JLjYsKg2M1jzY60c+U/e
 IKPlZb7+7Qm+vfSbXrExWBHkYd7qDB1mruU/7dxwW50PupjRCGN/4mQtKWkn5n+oiPxsd5vM8
 T6onjY/QBI1arxp2Pfb+s4oz5LI9i9K/EqGArx8q0C8lL3AhgjG7ioQMvd31T6cDlWUq7ZJcf
 zzpH6OpTGKI5qOyuj3kFgMn0d3N9BsIWJxae8QopVkTogCd3b1GyaLRGx4GYecc5F08zSbZKV
 kBz1po6bxpYdN3oivrmzbBSZ0ERLX+Hg0/WNsaQjT5YT41gobUpl4Qonai2/fkO5V/gcoGi3C
 qXCGhWRaG5j8mxORyNkJBYSM10OujetGdkUwNpp5Oea7fu8eRacIpOP+n/OmlltAqqCQmOSh/
 me0yELWl2NllWlx9xKyt0HcXWX324MQldRBge+P9oavcgMEySWVOejM5BgL9BVttV1sOEMpwM
 UvrpBfMF8vvZseysaMlZpYth7Qu4LW+ilgIgNo464IpswwvcprnYeAZG7eaZ3yl8zTxk96SVo
 uE1JM3MQTp9B68ZFLHBfB29PQb4jLqi2eiLM1kHnp16337BGKamuiIk/M98OkI9zad78KjJu3
 XK5t1U0Ow8yAYlFMG9f1hTCJ6F5Vkq0zNtuuCB2ITOkMbM/+m8c6tOV3Hw5zbzef9JU6/T0Mp
 HROVcfqhoZdql5gZ4N4nkbSp2WTtQsuQQDLm3O+2Oj9V9Igvqy9fUQsWcnGQ6AEcD81cL/8ss
 iGh5A1xDFT2okHfjhNNbY0rh8osgWV7GIqfL9dQMd4R2FPU5mZAoK6F+H9QGHoidZ0GqPtzLS
 spECzcs5Ff8blI91W8lqIc60CImdJAsmqztQeh8Xn7ibOYMURjKPfqCcny7fy/LxZ/Hk8hKbK
 FJdtIoPg1PN3pc+6gs1/n6MtQ5H8/v5+poX182g1k1QjPyCTkvYEvWe5bvcV9t1zZDgDGE3tH
 3cE0+41rqIbp7iJVSzY4bpr9xzH1eP4TEyzDVNi+c0gq7N/ur+Cw7yg5uK+y4lKPnL+Memzxj
 BMLK0qpgUNg+5+tdeSU1cFR5gjNI6Ro0kP1wajflcDR1oasv1Rg+Q5WKAZa/s2VMy1LrgutM9
 8AXP4he1gak4F0pSFIQpc9FBXeBZB/eEcLhW1tmOFftcgFdLxOTxloR76wIYdKlFUgI6KT4k0
 lbUAVkL+7MwPD25h8YGH/td9jlmjCj6sy9sB/McVlJ1yLC/KlPg9rWcZYm7AxqDsb4ybsWC7j
 XCkraBg/nO0xEopUj4N9Z18I9cPhFG7dwYQ8RHl2HDXcIYcWxuBh+D8pFiSZ5WQt2d/WgajRn
 IkWHGfAq7bwxXfHMm+08E7giRp9u4FdUIiROWI/PmJMx7bnwfBXF5Tl0o7c4/JpZ1ixk9LIDQ
 rUV9oQ5vbTQVLuOYkeaou1g2K5gumR8zW2RdYRtlRB9VIQabdrX3cQ34MQrsbVMMSMGETRVYW
 paGoIAJAnJCH1/5iEUEdJDF8TvJ4//uteISMK1IZhwCuyQayTNY9fmBTGIa1QhpuEx2vdkCtG
 Pt0Ol9z88COSCN00NtCTUPzmTeUgMwBCJEEHrw4Oedvr304M+IHMVyPZaXRBcR9Lgo//i+HSM
 DvPo0XuS8uf3TvDBr3OsDEPenhXd5taAY6TF0lH6p0TQ=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6E46DXFXfdyA53UMLkNAUveN5k8HfaLzCyS0h1vDsPk_1767671155
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmx.it header.s=s31663417 header.b="G2/vHOLV";       arc=pass (i=1
 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass
 fromdomain=gmx.it);       spf=pass (google.com: domain of kyle@gmx.it
 designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

Looks like the site may have gone down temporarily. It's working here now.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

