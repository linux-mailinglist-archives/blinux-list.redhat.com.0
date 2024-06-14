Return-Path: <blinux-list+bncBDM4LSNO5MHBBA4PWKZQMGQEC3UHZ5Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A9190921F
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 20:10:13 +0200 (CEST)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-796bae40ba1sf208488185a.0
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 11:10:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718388612; cv=pass;
        d=google.com; s=arc-20160816;
        b=GlO+IWWghVOwOFoqkGb81X5SKSn/tIv72DhfEiQbt0PGoMqmKr4kecDe92VEkvlYIU
         TQRUSGlpOMd+eqNRvKTpnDSXXaIHaex61xr0v953mgxlWXF/XHoVSeRwN0iTfR9Y/Wjt
         tUDNjOXzaFCNi+YCF8BDBo7cO3Au36IvZzN30SIGxIxNGiH16iBn0EOWLDZfNdVLHDvL
         vCtrevF/Y8GNSr0Jt2UHfO3Ix5Pn2qyUClDh+EUDz5Y1E1dEtomCn7AKYH7xBAONvWaT
         MROOOjnJW4Yda60fPftj3Z/9o/aDyVJu93UkvV0y8rPI5y5gz8FYRupmkqLhjAeRwdGj
         Wtjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=qSPbRwdOFB/hWvw4bTDu4o11PXvd7qgiwAnYuY0G8HU=;
        fh=A1+CB515G7eonKS08SI+0BKDOQRLnowKYMl+qHHKHEA=;
        b=qS6q8sJ0fCK/5oc6n8obsfrgnqgg+lG+IR62PNuq3wAR5Nc6JK7VFXQWtAfN3MVAfV
         JCwvG7XXVpBSKPhNn5Maxus13zd/nCJNz17MYZoVClOMDSHtFCnGu6iHgpQ3w4uqjSi4
         V4QvE8N/MzC3YQxThJwstQBjgHTz/3pv1YXenMJifrjUDiUj5J8uq5BWhkdsgEfZ5Vey
         /tqSU1fhNRw8vsN2E7gl3kgUhP8cF8aGvEfH2hMD0O1nDZTxGJ+p+ok03CVxds64/fmb
         m98I/i9WbHuHAvxMIo7A7OFZIEORovi28eUgg9+ppcjKbYqXWC5RDjdrEtNIqETxbn2V
         G43w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718388612; x=1718993412;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qSPbRwdOFB/hWvw4bTDu4o11PXvd7qgiwAnYuY0G8HU=;
        b=sKaHrVGU38cKFX7mA39EXEgS/ekYcIt8yGljgTI3IeM4i+Yk/axiLdll5MLtq/Jznf
         theXKE65CckzeO2SrQXjb/aUBRq9aWksi63Z1U3WKReUrQ284kdNxEXXWVlYcmqvXMDf
         6mmfz79R6CoHqTvkxAhCwUaVP3+RSW6UOopwhl/kfbtLtQoJFx+a/4eb/By3OrXOb+Ji
         ytX6Hi3T3OFTu4rK4L8LD5jwaxP6DNyjWxelD1dYwoPOBeT1kcw6eQ6FXOQxmYyDjS61
         kwDfvRkrGTDU5p3+iqCRmtHjI9erLqzqW+Aj1c9D17cs4Xq3xEqMpcfGgrE3dTx6qrdy
         hFzQ==
X-Forwarded-Encrypted: i=2; AJvYcCXud/ZVo1bLTcmJz07TMPLazDWs49nwT/HjhyF5gvwd0wmQn3wmHDoJX60Ye6tMPtVnfX48IS/y8IaxlqmUQGgqHIqBdtbnkT0f
X-Gm-Message-State: AOJu0Yx8i+1o3H5ZuT2z3rZ79cuzccQ35spzgYVtoostH+xZdtHo/QEF
	FzLqxHXNL2pWcTrcdYorPhms0WR+HKONEDQD8GeGD64KDaWXmt8Anp/Y60ClByM=
X-Google-Smtp-Source: AGHT+IFLRRbQdnQUGfcTV7k83n9irQ02lOElYNm8Rz4jW9+lRuZK+hy3zjLb9xFeOj8oclspdYvk+g==
X-Received: by 2002:a05:620a:2685:b0:794:fd1c:d2e with SMTP id af79cd13be357-798d26b945emr396001185a.75.1718388611414;
        Fri, 14 Jun 2024 11:10:11 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:128c:0:b0:442:14df:b694 with SMTP id d75a77b69052e-44214dfba79ls20354401cf.2.-pod-prod-07-us;
 Fri, 14 Jun 2024 11:10:10 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVbxeKuLdfxaIfVly70gi2K65vkrAQLOD562pe14oBw2hbsl6c0EI2T0FS+eqQ//OhT2lwwysC666ai6pv1SwEbueMycua4sCa2CuLN
X-Received: by 2002:a05:622a:7:b0:440:5783:54ac with SMTP id d75a77b69052e-442168fb8dbmr41968991cf.8.1718388609526;
        Fri, 14 Jun 2024 11:10:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718388609; cv=none;
        d=google.com; s=arc-20160816;
        b=XIZ9TK5PZel77RQZxGm2dXmPmn7JZxYFMTokIkXv3XZLhwjo/6A/o8FTjlITIlb6Mo
         ltu1wEyORG4JQRbg7f0lTGHwomacofc3Y10WJco5exSNxMmjmCLBpUIJarKmbeN7db/2
         fFbamdLNIsbM0CkfjE7rYyJ+pVPzJQwLqCI/eheq/m9DSpPqjN7IhcFS+ZMHhZgXwtQW
         h+MDv1Qk9A0s3MNlfBDiRc40pBgy9itsaJzMWx9TmF5UmMGjps8/2lVHlujAwbb+eNqF
         i2N0V/WNYePqRa+f53mrKk/BhWoywhhtr8Mh1KjOOGD7qyW0H48kQrYqN5JkitRYa8WE
         IuVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=l8o/BEmWiIX2lIuOFxpcEoU5vru9vtz6hOkDqAVe6to=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=jgkCYN1np9w/aOTDHNwt0z76TI3lO8waD8Dfow/nL5VmW2m4oazPgU5lWmVsVAj4tX
         tIPmcgg/sYBdm6jGV2J9UTMgiZ/VA1rkErqDiBVXouOdxGWi6YN+m6P2G85pYqW+zLBh
         ny8eEUOPskh3KaZ39aHLCjkxT6cpeRhRPtZhnSJosssNKM1mpQqmou0D/ATgR0s8JOTN
         SBT+df0vg6d1DzC/pwsyoZj2GIHWCbRqQs4MFBcvnUmb9Z/TJwP2s0JImsLHblnWeo+k
         /nJYxBY059bPXLbLKMfqhyp8lACwefMaM3rdiraLraCc+miUBCxJ3qaq+RwUR3ZKj4uX
         Ytxg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-441f31030c6si42698391cf.718.2024.06.14.11.10.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 11:10:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) client-ip=74.208.4.200;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-588-x6yjQ4xjMheLVVb048FoKA-1; Fri,
 14 Jun 2024 14:09:56 -0400
X-MC-Unique: x6yjQ4xjMheLVVb048FoKA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8FAA619560AF
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 18:09:51 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8114B3000219; Fri, 14 Jun 2024 18:09:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7E6253000220
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:09:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D4B1419560A0
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:09:50 +0000 (UTC)
Received: from mout.gmx.com (mout.gmx.com [74.208.4.200]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-615-0uAbjzVFNLqf4ogWUesTbQ-1; Fri,
 14 Jun 2024 14:09:48 -0400
X-MC-Unique: 0uAbjzVFNLqf4ogWUesTbQ-1
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([195.16.11.121]) by smtp.mail.com
 (mrgmxus004 [74.208.5.15]) with ESMTPSA (Nemesis) id 0MPVxf-1sMsFW1pLt-00F7mK
 for <blinux-list@redhat.com>; Fri, 14 Jun 2024 20:04:43 +0200
Message-ID: <7d5aee79-0f57-4e25-a457-252395968076@mail.com>
Date: Fri, 14 Jun 2024 20:04:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: What Happened to duckduckgo?
To: blinux-list@redhat.com
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com>
 <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it>
X-Provags-ID: V03:K1:4wFrqu8BNeNMslaMtXYYK4K65B6EI9GnE1ExhdwG4PAWbI37EUI
 AkzKD69E8jZf9L2wtW8Fu+rT6wytzgFsp0/lFa0bwETFWU0XeW8lDhHxj6pPEAXWZeDxYKe
 OJyeBlzjyLXT4DIfuqCb+BixSEb9VrztEzIxDUx2DO2JC4o7YGLIsyApAxUdGC+79B72UMh
 lXbYzkTH0N74ZdSav6i9A==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:bS73xofyW5c=;2TbIEj7aOJzARdZ1N8YaH6PaJwN
 jdA1ahRqTYTys66HBhvxogUltH9INUv5cHCIKVVxKXzt0i4KXNB0L2YD2fGHfP7QGU/MTTYeE
 xqGpf0MgEbqIwRxSphXxIctPUXLJoPCSpnSeqJ42K7HpN5O6YNxd9dvZDutHdoIqsm3uIEQ/X
 DpSor33b88u1XGjD9U9Iuos0qJ1gg3NakYVQLZ9rNst04ONDFbhDcean1uxc6e0kjlgmJ98ac
 wtqp1CfN0tCmBXAQxadmGdSC8ArImSSyxZZEe52+CvFnNiXL/uRh++U8+YVRQl7gUSdxYvnQT
 eu1SzOuQaURFWhuO8AGm5umx7Yan0LH+myYBZcvhcTOeb0ZdmgEtLTBjKbpxoYvytvCX3A8mj
 FfFfcaq4xHK5QIvNTd7FeqwtVw/VC1zQtvIKwbyUCzpFPYsVcLQ+DSACfmx1zgh6pmtNa0/pC
 TG3YBZR2q0tBZgHhYwftuYXP+/cleIjqP7+ALGFg6z4uZjzjMOlVygB2KBcb/OlcnG/Mcx2+O
 S4RM4+cjMFd7yCy5tusClTFCfTGiCgg/15KgrrlcDzwPaqZ1mZ5FwSWrDHuIez/0GVS6VUg6o
 Wib3t/bGxWqqGc2rEtg+tZ4ijm7volFejNitervVBKOtDoAgB3iq86nDAAVJHk2umvq3L4863
 kqoY1LDiy7ukSjVB1zcLRIGCqvWrfQZTXBEwtYFKi8kAMsMfZ11iGTcoEjdFE+b2uHQxDIM57
 NZmUVrt/0HEO2dSIZ6jmPWkW5cr8PvplZsi7Uh9W7rgwQIPw9ERXpQy8I1zUr/EE6qHdgmrEK
 9C9dtQ0VzlQ0EZabA/AWpBqqoKJ9RUFQxIP9L1ZqB8rFA=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Original-From: john doe <johndoe65534@mail.com>
Reply-To: john doe <johndoe65534@mail.com>
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

On 6/14/24 19:13, 'Kyle' via blinux-list@redhat.com wrote:
> I have it working here in Firefox, but I haven't used it in a very long
> time, since I saw a traceroute that took me directly through msn.com and
> found out that they actually show ads via Microsoft's ad network. Since
> then, I found
>
> https://searx.org/
>
> which runs a self-hostable open source search engine that is not powered
> by Microsoft or any other too-big-for-its-own-good software company and

Per default, the autocomplete feature is coming from duckduckgo.

--
John Doe

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

