Return-Path: <blinux-list+bncBCHY5TMQ6YERBAWKYC5AMGQEGCMQV4A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id D800A9E36E8
	for <lists+blinux-list@lfdr.de>; Wed,  4 Dec 2024 10:46:44 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-466c499185csf106717741cf.3
        for <lists+blinux-list@lfdr.de>; Wed, 04 Dec 2024 01:46:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733305603; cv=pass;
        d=google.com; s=arc-20240605;
        b=bn/BBXA9URJPC/kjz/0cX8QakbgStkYf9kjpi1JlLj1Z4yYzBKcu+k+Y2R+EYJiiap
         r/ag7EyeNq+ucv7+hWebFXav3aWv5TpQ9lob7yF6C1GmpSuZ37NvsFUGZgEMGNtOprsK
         o6rcUciORoWb50yITly+ZTe+oj1LR8HdAo1pGWPsPFPkDCq2OW+NHfA+5VWsnvuQtZc5
         AZ3N6sqDwf3c+daquOfTCa/PGLyEQuWu6rfG1R1ijK7T781jTiOgpIFHR6HT0Gs21Nu+
         Lh8vSavonYj53+jVVL7JLCwIo36lOBBsCkNTSduVUMabnxhmGlGlw6sYJ88CnhEPYYHu
         +9HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:autocrypt:subject
         :from:to:user-agent:mime-version:date:message-id:delivered-to;
        bh=j+5T/itz/VGV6lkcyyEQP5HPaK9FVDWJP/LKIY7Qo1c=;
        fh=1qGOHosfwvT7Z7SiaZGngqd2URiODIDuNA2vVgtMFog=;
        b=j9wD49pULtvYMqmpP5+4czc+FWsMAdr7gHVIy8W7nc4m0xy/LAibyCY6WFxgtso+U3
         PCYvCR5yW5bRgoGWvWRl8zuUttLSlpqtBWfdLAWvKEzvyoknjHN2fOkWdxzfv8sqB3KX
         gii4xikjsDJ62hKrL2S4+Bk/2clywHRvGX5ZZnOsI417HayhWwTaZJ9drSmQfZnCb5f/
         HW57BuNwXttKdcgyx+zS6v7ZM2hhJZ0+9AqTs3QxAFbIMWjQWQTPvrOlNnIR+eN4r/3T
         Yeh0Hiz1K9UMkJHy6V7O6IUJbu/6X2BMRYmMFx0BWNjFywUwm8J45NFNFR8RbStexS5l
         K2Aw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733305603; x=1733910403;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:autocrypt:subject:from:to:user-agent:mime-version
         :date:message-id:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j+5T/itz/VGV6lkcyyEQP5HPaK9FVDWJP/LKIY7Qo1c=;
        b=gKvLVIfn/Guxr0ftwx6rb0BG0zyTWB/9LmHUCKdIdK+h+dVnRjKo5/ESN55jMSPt9A
         NAvloaTjsYsWdfNakRkCkXTfYPjCEETO2PVAjvt/5++/j1TMlh5FvoXg1LWPEWqtgHmf
         1btBQw0OvXloJ3Vs3up4VnPtsPYqFUsldnuFS4oeKzg1Ib2smdBSoGyCM3586fcsM/5B
         thn0TxNN6oFFXD9B5AFq9UlMzJhM7MhCJ1MctzpRF6rsP3Lwhc9HPx2m1oIoWGAOs3q1
         NTqwAB3qQUvEtVEyjcq9PqPYh4ww8l2brTJlu0R5x1TxWO2REy0/413G77mOzJx5Uj7L
         4RHQ==
X-Forwarded-Encrypted: i=2; AJvYcCXppjl+IfTPo9ziQAg73+7MleYLhFieXVxLmRh4Wnzqqhq6dGjkpujLY5SqTyKr72lh0X9nIw==@lfdr.de
X-Gm-Message-State: AOJu0YyfBMRcv4D/j/1U0JFxoP8fLf/r7HhC0sM8ZJGYBaUaKEKLda3+
	JBJch+H0nzSDGw0ODEizEmWKecgLHma0Fb9WBoV7zuwY0KAdPtCjarTmhqLUtJM=
X-Google-Smtp-Source: AGHT+IGD6XIxIX7i6oqWoqG2XifmoqG/rs+vtYWhWd4QEujXbsaajWdSmw/4rLlrEikZhpJHevN5jA==
X-Received: by 2002:ac8:5a0e:0:b0:466:b382:a789 with SMTP id d75a77b69052e-4670c072df4mr81490791cf.4.1733305603383;
        Wed, 04 Dec 2024 01:46:43 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:20a:b0:466:c05a:280f with SMTP id
 d75a77b69052e-466c1fee106ls14381201cf.1.-pod-prod-06-us; Wed, 04 Dec 2024
 01:46:42 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWg8Z0xME+XyHatZndjua2rO9GJO3kr+Q6I2paqAd9L8O80DKlyGpWjwbah4+MPjpksflanaG/Df1gdHg==@gapps.redhat.com
X-Received: by 2002:a05:622a:1a0c:b0:466:a7d8:fd21 with SMTP id d75a77b69052e-4670c0c0360mr78203131cf.24.1733305602489;
        Wed, 04 Dec 2024 01:46:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733305602; cv=none;
        d=google.com; s=arc-20240605;
        b=WH9D2lDwsHjnfkFcgIzyXXkDxuKxCctH2dGBEZ15SKoUibwjd1XfBOCMamgPp1sgJ3
         a+ho5pYHYViOyPYCFqxR8p7bT7vtLUUc26Zi3LDkBK5qatCGFO5DFBSyN18n5/3IQnBT
         vU6wtKo91u91v/0xvZTnew4zzPQs7TZui3XiB4wW1I3Rgk97zrq7A1/76R4IhMm6xKTR
         4ktVSSWVpBtpvEaevMgCjPrNumSUaEDGoIuJV25q2N17mx7161cwb+c4hoW1EIl9iT02
         K5RyPyL44x4vtlhi4YUv7N0Pjk7sFpUtivsnosup7jZDN8DnHHWX95KEYfFzyWnNlBJi
         cEfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:autocrypt:subject:from
         :to:user-agent:mime-version:date:message-id:delivered-to;
        bh=wxwD4IDVMKecNpcQJXbJ6qVOHIMeLlw2hktiueutvyM=;
        fh=NbaJD2uAKV4/FIqTd0wat3NgsLwCgLHQrdb54Oo5y/Q=;
        b=iTVRuS9LNf+lS/0f6O84uDN3ibj3bH+Ue7god5G6jbiLUnfn+Q0RKC6VV/TsjdTKus
         gsb7gVqIHjVL+86ygdiX6/ZU/TsR51gXaJt+qFx619qo9PL/AVj3CLFWnuNn9xq1A3Vp
         4Iesk0lKKRSCdbOGCNcm1vFhv7BlQCeDwmFFFCUBykpjYt52cVPHd2+wSnlJjZMyWeJl
         cqlGpPrr0eXJF0CkySSMPyRtymD3RvU/ozPO4LxKAr6Zjt73qcz8pu8royf7g8Hx3tie
         9yjj6ophWZQVuDinSVd7/1yoGemiVvy4x4aWzuTQeIbrzx45cQqO8VbUlqagW2XyAKhr
         JSVw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-466c4227c8dsi164114171cf.472.2024.12.04.01.46.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 01:46:42 -0800 (PST)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-29-kiJvmjGZNCSIGujjvk299A-1; Wed,
 04 Dec 2024 04:46:38 -0500
X-MC-Unique: kiJvmjGZNCSIGujjvk299A-1
X-Mimecast-MFC-AGG-ID: kiJvmjGZNCSIGujjvk299A
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 880E91956054
	for <blinux-list@gapps.redhat.com>; Wed,  4 Dec 2024 09:46:37 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 82F3B1955F54; Wed,  4 Dec 2024 09:46:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8032B1956053
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 09:46:37 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EC4811956054
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 09:46:36 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-336-DqjfHrWFNo2s0v1XDLDP7g-1; Wed, 04 Dec 2024 04:46:32 -0500
X-MC-Unique: DqjfHrWFNo2s0v1XDLDP7g-1
X-Mimecast-MFC-AGG-ID: DqjfHrWFNo2s0v1XDLDP7g
Received: from [192.168.1.20] (178-75-165-74.bb.dnainternet.fi [178.75.165.74])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id 46FEC415AD;
	Wed,  4 Dec 2024 11:37:45 +0200 (EET)
Message-ID: <7419c4d9-1ce6-4df8-bfab-7bf3d4d98f1f@harrastenurkka.fi>
Date: Wed, 4 Dec 2024 11:36:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com, orca@freelists.org
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
Subject: sxmo and linuxphones accessibility
Autocrypt: addr=elias.stahlberg@harrastenurkka.fi; keydata=
 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
X-Mimecast-MFC-PROC-ID: vdyFKbKLsCzDQAgeqXz4LIj2nHLc2dwwHFcVBg2r6bM_1733305590
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 693IBbRL9JxJJgCzBJhUhXHTC73IZLI-fzn9gGiPqnU_1733305597
X-Mimecast-Originator: harrastenurkka.fi
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: elias.stahlberg@harrastenurkka.fi
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as
 permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Original-From: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Reply-To: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
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

hi

As I recall, there has been a discussion about this before, i.e. the 
accessibility of Linux phones and the sxmo user interface. I found a 
discussion about improving accessibility. Has anyone tested postmarketOS 
or sxmo recently? How do they work? What software, e.g. the menus of the 
terminal emulator, should be changed in sxmo so that it works, e.g. with 
espeacup, and what would be accessible solutions?

https://todo.sr.ht/~mil/sxmo-tickets/473#

https://sxmo.org/


Elias

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

