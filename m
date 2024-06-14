Return-Path: <blinux-list+bncBCV3N6GOXMCRBOUSWKZQMGQEIAETWHQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA8F90922A
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 20:17:32 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6b077edfe04sf23536876d6.0
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 11:17:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718389051; cv=pass;
        d=google.com; s=arc-20160816;
        b=KcA0X+Gqw168FaBNb67nre57hl5ZqIm6GiY7DMMDyXBoqG94SXd1m7CUIzK0yLZeJ9
         /xTfCBJp7wuUF4d7SRSMvN2gGIwlPyYZYuu1rJXuOZqM3pXwoF4eFHapnZigrwfJ5y8i
         JtzzRo5uV0wLFTbX8xK2dqnPQ+/8ff8NkUybGxxe7vBrq4F6i6/zxjBFHahy8T/nHKOC
         eECI3cZOzKgkOK8kg+IrMZHxifYXeQpoW/0WKjVVMOkcs4L+vUBO14+PITig+CUfBYpT
         Qf5n6t54FXixlchaBH+ApAZnNOpA+dVuKLbN0cAcRvw7WEWwaRzd+KVofiVVbrBulmKg
         R72w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=0l53qCdXUcv3KF7oh4hlAhJqL7KRWcZ8l/kh8VTX/Hk=;
        fh=UIHaoX8Nw0JSpFKthW9gIds4QW8cem316EgKurmVY3Y=;
        b=JyjeDWkFOLG3+N82kl0Q2ciBC4EjahE8c2RCWAKRUC1/AEo2bGVWXvdd6ToawKUIa7
         5kwXFnh2dCWBdVS9LoSXfLPGsEc1JHkDqS/6OYqXi+qSNxnr9UPtIi0Doz5JzQVuW9q/
         AWVMOt4cVWrMJ731GgwWntiVouKY/KiLffagzsCe/qhuQPHxJGveiuYcUreSiYmGHkE4
         PFwPhz13tGY1lf5NHeJilbk8nmF6m8rcDQbi+pYqsORutLZ7YShheJYmYRynFgjhqe0s
         XLlXo0eq6xHF7tgBxilY3NmxLmgxSZ2OK8ammU7Oc+ZoFZ4fm4a/ofai/avypiJzJEVe
         3luQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718389051; x=1718993851;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0l53qCdXUcv3KF7oh4hlAhJqL7KRWcZ8l/kh8VTX/Hk=;
        b=V4Ay166RwpyfcHTfxUjgkLI9OlAAeYwJb7vgMReDr59zVQRKzh3QkSSkU5elUIXhm1
         TUGXHhakNBP3llBc62dyGI8UV/oJgB/kBf3bsYNQr2QMGYI5OA0SdU8Y6ufdwed8E6K5
         4PTigGj/1T9uwxc9Rv0xJGkzloeBokmMaan9/SrEsHVf90QoAldnEsCjR3TSF2AXRxLA
         RQlzROW48di2bGrwXNXVzmrgzPW+TIEWqovtXaC3lb8Iweg/WHw+5CkKyN2TIZjKDwtR
         gQoeK80R2zTmdVkM8cspA0ru6BM6CAZfiGas3Bn10D33XRw8RxjguY3+7RZiiRYq3JFW
         ghJw==
X-Forwarded-Encrypted: i=2; AJvYcCVoAgUBW4elFgOMs+0L0qVOh1j/9/xv1ealC7hqQ7GBtZUNUNxb4YvXdjSVXyGwGyJdthJLl6ioLTaEXOpFovduy0GwweGgj8j3
X-Gm-Message-State: AOJu0Yw34l0Ur+fapYF+Ub5Xe/at0RslLtpOmFQpwTeiJHHAIpXiIkWh
	2/RGiJ3tnbmrS2Eh4xb9svJOk31YmZzFSwx48JmLtENJL6Tintowr1GQ8hzW2tA=
X-Google-Smtp-Source: AGHT+IGIVbFKfXmMkZfuD5Tv5qtx4wZ4rkT5MKrNkbIlhgrQrpMd5bFmhGGr9dVWPli20W4rrySHTw==
X-Received: by 2002:a05:6214:50d:b0:6b2:9f24:605c with SMTP id 6a1803df08f44-6b2afca1950mr34279346d6.24.1718389051086;
        Fri, 14 Jun 2024 11:17:31 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:418c:b0:6b0:862d:978d with SMTP id
 6a1803df08f44-6b2a337db16ls29094326d6.0.-pod-prod-06-us; Fri, 14 Jun 2024
 11:17:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXJXUROnU60bHLXHddps3hiwoef0hmpGgBv67fY46jZYa4Ycyqpr/rK9guZqI6uM0p2P6Wjo9SwSVaqSbgsI0gn8qzf9fnEi0Q503jN
X-Received: by 2002:a0c:e6c9:0:b0:6b0:90a0:6e8c with SMTP id 6a1803df08f44-6b2afd77612mr35250706d6.43.1718389050081;
        Fri, 14 Jun 2024 11:17:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718389050; cv=none;
        d=google.com; s=arc-20160816;
        b=XQeKJ4CkKH1HtqEVZ/8Da60PN9ePXZMBBK0A2ZDgNFiUYA0xEXBTDHYG5YydsqYQqb
         lxz3W3Xmo8Rnth5vOjzqSSua+MGdoHY0rk6y5mGgpL6TwFsJ2jZAPgZY5R7hJoLqZoR+
         nbhnBrnGIiBFw0xLo/nv8E6dAGs69UTBvj78lgY9mEicnZT5zxIkqBidN0CWSJitIk9X
         URXwKjDC9vixn4D4uXptQtRfQAa3JmnwcLkDt7OLhZtTk45uNUAhH8hD2Q60Me0wVPbp
         XeV93EfFLOe+PiMqskkC8NBR5PRNyWVhGSDGXBx+Ch40ubCIb0MUNo1ZRWixGj2eHp3v
         kM4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=TnJXM2Se0ibGWT3EKUKlAKWQ5oMPMNQ12FA59gQVnnk=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=aNFdIoU7WFfjzfYI/Dy+zCbKuV/WPkzbbfsYFNIRxR9CKTKKUj8/QMuizM6DQ2XvKS
         o8LdOwVUkQgxXAhX7yFPpskzN4+JovPQpQwM6pzaapL8hFC+4w2NeNSbkB4JLH5vE4hI
         NHI1qDabjsEEI02KEAnWnxPXrdRGmuO061+Ts2ir+c6HYh0OYFSETqVWutVK2VeF4mSO
         lDbkpC6DjN+hEUMq1Lm9c1MMF28DbusG2WxS2gLG7l1u9DIHO7pZQCr8OdD/ZcXE1JG1
         7YAODE1qTBdQ7Usc9KTjABwBVBoBgySZ5tootdA1cXSig9z76oFDbRsRnALQOOf/pmT+
         qzKw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b2a5b8b279si41559586d6.586.2024.06.14.11.17.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 11:17:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) client-ip=212.227.15.19;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-583-qQspJvPAOUCGCfhxLCtc2w-1; Fri,
 14 Jun 2024 14:17:28 -0400
X-MC-Unique: qQspJvPAOUCGCfhxLCtc2w-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9FE0219560AF
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 18:17:27 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 910301954AC0; Fri, 14 Jun 2024 18:17:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8E3141955E91
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:17:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E952619560A0
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:17:26 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-222-WHYbNk_aMx6LF3uMhcPAGQ-1; Fri,
 14 Jun 2024 14:17:24 -0400
X-MC-Unique: WHYbNk_aMx6LF3uMhcPAGQ-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1Mg6Zw-1ssuTt12J4-00fvuw for
 <blinux-list@redhat.com>; Fri, 14 Jun 2024 20:17:23 +0200
Message-ID: <f30e4990-208b-467c-8fb9-545c2949b668@gmx.it>
Date: Fri, 14 Jun 2024 14:17:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: What Happened to duckduckgo?
To: blinux-list@redhat.com
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com>
 <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it>
 <7d5aee79-0f57-4e25-a457-252395968076@mail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <7d5aee79-0f57-4e25-a457-252395968076@mail.com>
X-Provags-ID: V03:K1:PX97bPhOc0VBQVmgEsIwMC1aaU5HvoOKIJHbifATgbQEIaDyP74
 uGraiDN9woDgHJr0ua7HteEqbs3HO8jUZl5u1ofmxp6tJeZncraW+W8E5bHdwsMTY5eMt0L
 LBcFfhgvNy6uM3VEadpKEBjXR17gyMXyGs76yaGCE8/cz8oin5FEloUfRb4pO11fEAA9ZPh
 iM8fdkn8wCso5yGGm4lwQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:ZZDV6thlJbg=;84WJ+rrI2jy01jyeNv69eAwlx4A
 R5OBAFWjdCJzKOMl+4dxlhNCK+j5HZkMwfLRroWZ6ZPGUOAFLkocUWwCoyJZhRRg95hfqzBJ/
 ep1GJL9AwcziNEG9cP5gLjbeulnt1OQnsKCTWZzFQIAuuQv/zpV8JkCQDvof3u8h1Lc1iJ10c
 2c6XaqD4UejJe7OrKeTRe+kXXcL2H0nae+kxYFIcXBK7p+ghaxzWvcgPVjDtvuprImPrpWNS8
 Yb/dHtK4Tfosdb1UG8gERCpEfOgzz87bTumhpFl0PVYdPupcJ6P4LFfLl6vSRP5yIbAo0zsbN
 j3ZXHE6eFNi5abZwl0ioxTe7TR9iqZJcwgY4lCQB4QdK7s+hf0oIT4FUb7DtyqmxNk82kMMTm
 EtuhyeNCssGnYqyp3uFN5kDWrI9mOHtdVPMtfzd+BQ0zgquXrYojAvZ9+UsDN/edtMqxrFjUL
 K/MeRKLNe27vpJ6t4QSWbCWgp+Cf+ffeTxyiUYrxFimqIljSmhkf+WMAT2y1QPZKQTgdUZTLR
 HIluiCVo8kiXfu0OfC9IugEnlq6DhghvawCBFPdxH5xvS5ySnEciAG9VTRZ6tlSNrbDZ3fNTQ
 CGvFBXKrgUnQp+ORMGzEHIhCW5AV+ASx1hLxfJxAZl91ZwMnXmoF4EpB2iaOaMkcGyz9VXHIQ
 j/iNgEmir+wlCoC/XKpZazvqVaZB0q1v3n8VPwN2txoH+OQJTY3FVJKEwwq7a6qoS6U/v8H1R
 cAVzOWYXdRYIoBvzKU//Fhacg1smwGxL1EnbOjxFv8ntvrj/aCcLOUyiM8AM0Uc4SIzLSqp25
 Tfo0tHImfnnFMmie3HRTekJT5mIfGOghPPM4/8jeUaXic=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

john doe' alisema:
> Per default, the autocomplete feature is coming from duckduckgo.


Yes. Pretty much everything can be changed in the settings though, and I
think you should even be able to turn that off completely from there.
Still, as I understand it, all that stuff goes through a proxy, so
searx.org's IP gets logged, not those of us who use it.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

