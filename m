Return-Path: <blinux-list+bncBDYIZZNASAHRBO4PY67AMGQE5XHDS6Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3C6A5E2EB
	for <lists+blinux-list@lfdr.de>; Wed, 12 Mar 2025 18:43:25 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-47689dc0f6dsf538401cf.3
        for <lists+blinux-list@lfdr.de>; Wed, 12 Mar 2025 10:43:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741801405; cv=pass;
        d=google.com; s=arc-20240605;
        b=DHBDM0T1wKEi9jGRnKqmrNsXpLcC8d0YNPSWStaViEkxDfcIXsjrcNYo4p7oyRSjcD
         1Go/OSteeIdJSh9E7Hd9HUU6H3uok+75mQmyXkYqQHhypbpCRv54Rw9gEoKq4CkauKTq
         rGC5/6seAu9lCErNcFO7FkMwQUz+iqESypbEtkPUwof2ZvryVBpNgqxkjIj8hLFu9i5v
         hNepqIoqFgyh29iAo4+XD/mirfuad6AsIdyH2PHidQobOMiEy59syv/jo0p4Tpcn/2Ll
         GNYEW4oenRjvHI7ZAG2lAIOvgtcAcMbHweYS9F6R8CQkdr7X2CKO3ttsrM8BsgZk8jnY
         7CMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=BzzRS0FgXA42euQY0GBHPkLTFewYYYX397FuIzUkRvc=;
        fh=nFRNRzNoUi26rwUsd5kr8cVXndgxeHs6oYGB0pKohaY=;
        b=SQZUiiPm+umphW7kLadIpVe9wqvbczNsPwYhgrCb/iyq2JJ1uFwy1WSwEWs+fMfZ78
         lgb6mYQnwVpdkRK27WCic6S3yzHeqPfLmw+4HnsEZSxAcfZdH+fNSE0Qpv1AjkA3s9Ou
         cdf7RHRZ/BT3klHC6UE67h5eJdcIMwcNl+HJlZ947uQ9iHRUyW1fgLdIZBMF1GinH9Hb
         MBp6L4jGSuE0NEwtjNrV5xhoWf8usye+KXy0Y4Bg5JGrKJqyfYwAr6jFVso8ySbAlu9q
         BcZgdfNHJtyRuYnqtmtxYV4IUVxSP+oor9y9ddVhcbrspBU4rLUpvikw5Nhe0GY+TBp2
         Zn8g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.178 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741801405; x=1742406205;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BzzRS0FgXA42euQY0GBHPkLTFewYYYX397FuIzUkRvc=;
        b=EyvPaJJSoMLBpXK6Z0HMf2jVPjN8qFs9Hn0j12krxmxwF3j27YYFYLKKodYZk7HABs
         JZrZBSuS0trKK7XsAeugYWK566kHkKj0OZRiNK3kLoOo3SZL7biHPeFzibmhphW86EwW
         /oPjtL76hitmgGtDyz1tOsLr2Q4HMvYUB+5jkMtn6EJIA9IPs2plIvl9DmEwHkTivG6d
         tt3Uqqv7JwUzU2BrclF7EaoebMCHmhRpuMvQDdRuNI1o/k424jh2pfAzdbvYr667Ij/T
         Fl3rAPFgD7fw4pzty9AZHVmPBS7i4hAm8eDo8sy5LizjDjKpKIteEBIz5nmY3MdvaPOc
         hzUw==
X-Forwarded-Encrypted: i=2; AJvYcCVVcuOepGQ2Ucbj8J6TukD7TB0cnACtGoWlU6+imrNWvZl92nL/tCeviDvYszyyMeOKDuqhKw==@lfdr.de
X-Gm-Message-State: AOJu0YyMmvfyOL9z5axPG7iFoUOyJ6UgX4Bsp3FK7SBrhUeKNPCVe1Hy
	Eza9yJkCWge5c5jl5sSDmOQOKmqwJTbIqoedEqALoPPxCm/n+X9v6TKYgPSlaKM=
X-Google-Smtp-Source: AGHT+IERy9Q4HPyqXhl7sGycS6GBuRmwlcTxDrZtPVHOds76+brv1px9lKkHxB0drXVuewFMevTwKA==
X-Received: by 2002:ac8:7d56:0:b0:476:955f:91e2 with SMTP id d75a77b69052e-476955f956bmr145761661cf.29.1741801404340;
        Wed, 12 Mar 2025 10:43:24 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=Adn5yVFWadoO2WaDbo2Fbt/hlkIhv5nAutE5bY1krCw3yhXOkg==
Received: by 2002:a05:622a:7706:b0:476:9c9c:1a5d with SMTP id
 d75a77b69052e-476b7e02b14ls2497211cf.2.-pod-prod-05-us; Wed, 12 Mar 2025
 10:43:23 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWW3Lw0ZEqBCtVoEsiHzg2viIni8AG1Y/vnb8bbh8LGjIgfP9lucrLhoTlAw2gzjTvt76iEqtLkQUoTMw==@gapps.redhat.com
X-Received: by 2002:a05:622a:430a:b0:476:790c:739a with SMTP id d75a77b69052e-476790c77cdmr173647041cf.20.1741801403089;
        Wed, 12 Mar 2025 10:43:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741801403; cv=none;
        d=google.com; s=arc-20240605;
        b=Nr95Z2Ux0XC36Yvup9Eo1jnrvfXH1/z94vjEiUSjIfwzcJ9Qx9A/8eYiyh1JmAV4EU
         CFad0iEirMgaucA6OCJAjFXBC2uA+OjXxrzeYNrrkt0gVyT7EGE7EMcvNJvkK/EuWCLm
         ++kzzSTJ8QNJJ+A+brjdRZchYslxlUGuSe4Rp7XciPXD7SUyaqi30NTZ6LOvqZ4uH4gZ
         q1K/x9WZXvyu31k+yQmY/KXQRYuOgoevLQuUzvHUDu06By3ioSVpfpk5/TNWzSZ4IiSR
         CzNUuo8Ls3rNdcPeQlZ7VNJ1rQGUzGq42jtdLbWZwzI3G/4WTXMM5kxMl+vIPcvo/4vU
         g8uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=epJHOnkseWtpmV/7oGSNayq3FY/ewmkI6S57O5ejBe4=;
        fh=2xobSpFZD2UITNPAxvbIz4RZZDEhMtbEKl2fI+2jMsQ=;
        b=VC4/Fpo3oVPH2V+9Q3C+L0OUhBNcx9JHkQCdL1dbOcs20rMm2AGAEfpuqTZzAGmCAf
         MC7F3MoSmimCEWIE9zXPP0TtNzEhKSCe6vPu3pCkr2tLq8BPYJ0rFqOPV06V4qnFhqQa
         aMOjHSUy9k+ny6uA72FY9gq0ikIdKc0XuUxm78EsbUW/932JrTuXQ1Qk9Ymp4iNCSZNC
         sWYW8JbD7r7cmrCX7hWGtJZ53gHX1Tvi4S/FzkLdKyYnZI3aPM4EUAhdmGpQWnTvkPKv
         ODNvQCUJlvgaFQEUdAsstXf3p9HtFfEK3IGPicXzcUUrRoZwA4+SOnNvzMVpP9RIpB8i
         UqRw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.178 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-47688050530si77276521cf.129.2025.03.12.10.43.22
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 10:43:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.178 as permitted sender) client-ip=209.85.167.178;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-642-3YBHYB0NOfOxE-rqYYw6gg-1; Wed,
 12 Mar 2025 13:43:21 -0400
X-MC-Unique: 3YBHYB0NOfOxE-rqYYw6gg-1
X-Mimecast-MFC-AGG-ID: 3YBHYB0NOfOxE-rqYYw6gg_1741801401
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E8ABF180025A
	for <blinux-list@gapps.redhat.com>; Wed, 12 Mar 2025 17:43:20 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E340A1954B01; Wed, 12 Mar 2025 17:43:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E044E1955BFE
	for <blinux-list@redhat.com>; Wed, 12 Mar 2025 17:43:20 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 49D4F19560BC
	for <blinux-list@redhat.com>; Wed, 12 Mar 2025 17:43:20 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-247-pAxLdAt-PCWH7uTrWAO9BA-1; Wed, 12 Mar 2025 13:43:18 -0400
X-MC-Unique: pAxLdAt-PCWH7uTrWAO9BA-1
X-Mimecast-MFC-AGG-ID: pAxLdAt-PCWH7uTrWAO9BA_1741801397
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3fa5d864b7fso76720b6e.1
        for <blinux-list@redhat.com>; Wed, 12 Mar 2025 10:43:17 -0700 (PDT)
X-Gm-Gg: ASbGnctjmtGBizke0WHf2/ySu5+rHUvRgT1O6TJ5677lKH42J2ZiM+iIlrjY9TpLCid
	YUfBVgtKxUuesElOCGS+8a4HVW6Uzmh8Nc8uEoPuES5tMGliKMrPev/6F421LCTUNVh6c6U+3RX
	Pxx42XoJWSRxk/5HnUZtckna1m+t0qT1fEu+XXOmKuFi6e1iUzBMEXlKk1Rub7Jw1nzmUUbFzHE
	A0+8M4xomtaOnV+vo3xhM9xcnINIzc7bOZ6fpCzwM7ll/l2oOlhk96pg0I1cKQqOVs6xzly7mUj
	8OYSw2E54EJf+BqlA1mFACG5X7NdOTqQiusSBfNounB6DUrh7mHsneA2HKB9HGjEi4LV8a/wv1x
	Znq5HejsQHnnawuuLVzb0awckvl+rHi2lhszeiPJwsxrUh18=
X-Received: by 2002:a05:6808:200d:b0:3fa:7909:2716 with SMTP id 5614622812f47-3fa79092e01mr3997682b6e.39.1741801397256;
        Wed, 12 Mar 2025 10:43:17 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f85b2a21b1sm1451128b6e.41.2025.03.12.10.43.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Mar 2025 10:43:16 -0700 (PDT)
Message-ID: <3035480c-32a7-4e3d-9e4a-778f07361fa2@gmail.com>
Date: Wed, 12 Mar 2025 12:43:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: LIOS and arch
To: Chime Hart <chime@hubert-humphrey.com>,
 Karen Lewellen <klewellen@shellworld.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2411202131050.435046@users.shellworld.net>
 <e6df03a2-e352-458a-4e3e-dca663175232@hubert-humphrey.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <e6df03a2-e352-458a-4e3e-dca663175232@hubert-humphrey.com>
X-Mimecast-MFC-PROC-ID: ABcJDBC40ZodxEVk-PmhSzRBS5UjbhRsd2RiwsXDLH0_1741801397
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Fob8766YptKn9-0iQKVrQxqvNxJDuRvsUt_qQ8kbUsk_1741801401
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.167.178 as
 permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

is there a way to install lios in arch and if so

could someone send me instructions?

thanks,

rodney

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

