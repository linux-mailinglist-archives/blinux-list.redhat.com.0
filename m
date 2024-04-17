Return-Path: <blinux-list+bncBCLPHQH4XEIRB5MH76YAMGQE4UH6O5Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8068A834F
	for <lists+blinux-list@lfdr.de>; Wed, 17 Apr 2024 14:43:35 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-69b31b7df0dsf69726536d6.3
        for <lists+blinux-list@lfdr.de>; Wed, 17 Apr 2024 05:43:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713357814; cv=pass;
        d=google.com; s=arc-20160816;
        b=aQWuzvEU3mCajh1eiV1lNEIKc4sQMY9FBeIExcW0FhJcoZcxzspGrI0VTI1y7Ab967
         MbVW2OYxt+NbbH4wg6H8OHvTNURDiy67KgnqIpcKYLVzD8CKEdrqu5WsknNA/ikeLaG9
         KIC9X6hl0jgMZ6UJOHVSLgF9JJqJVpqUaCjAqkWbTq8sBhtn7+6bnjZsRPB9yCwbZRJd
         NdxA6IPsfMOkr4TjyyMdRu23pWl2TedB/kuOxz1URgjXSGJFSq/m3ayHLFXoc9rN7v33
         gYhaeqgqsClNiVX7X9+W7nSn4CRezCtvWYVwNoBytUSqw6r9DjM7N/+FHwGpYRxznmqR
         VNsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=TcBhqx14D5BTQFgsycq+QrxzAVplwGNsmeqjiRVyS0s=;
        fh=l57SJaeCuXtDnNuiyRygI1Lxr2Id4+8UsugDiTp6kSs=;
        b=XHv78UuebCMDBownN4lkNE8aqBfpUoE+iHK6kCNtlXfHZUVDC8Q8QuXcHd2mQvUprV
         EVs9PYzSBksntA3qNJHE3qq8L6SEtGJwSDzF6CZ1kz5Rks6K9WYy1Xp23yS7DcjBgsBM
         OzVeIuudWbEKoiGx/7glua9VjDRGhD9tKsAXFPa8VPbc8rtIx/t00mxYnIvmxEQJdOal
         mPkQLwZ3Wvoj5qOfnOWg9HzRSj1j/gG5vyT7xQi34JbQP+pQD+t+opOqQ1bZOir9xIO1
         c12fDtgUrF4gJBrGfahyVX3AOpSWeJFryIDU7h4NoLZgF/1YVGy1x32gocJG735fDK9D
         fv/Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713357814; x=1713962614;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TcBhqx14D5BTQFgsycq+QrxzAVplwGNsmeqjiRVyS0s=;
        b=qFLfzbaaWsaG4FkXH+G/9GzknaPl+OKK/919eOdebQ+kvRdXHmMVX+6Z3nOtIMWvVj
         fLJRCtZFAJGRo/Wih3Nfgdq9CvTgXiqgrhVPPSp+JWcoa0DamFevRCgWT7Bt1+Mnh1gi
         MZ9hJ/urEFY+Vz2C2UnlkvPp80Hn6fSkYrW8stfoe+l5x05DjjR10ihp6vP5DxGt+Lvv
         gigDmf3VTZM3s5HV4kKNddu66siVvBEhThrYZQlncv2POkvI3cCftPSvZ7BPGPzAeEiJ
         Ff0lkH/wXRZJN5VvEWzIYZPiK6cuTjTll3vo8Op4VFuaurpnj7/0cCFU7baaErArT1Bx
         kF9Q==
X-Forwarded-Encrypted: i=2; AJvYcCWBLJ+HU5v2Ixl4UIOi1SSPwq9K4Tlaz1KUFnD9dor5zrwMBPSotkiQfa/glk2e41y/VbaKrwZbpRgOnGR8yJtK7Wuw4L0bGAPp
X-Gm-Message-State: AOJu0Yy1dDZYi5/Mbn2nW8Y70qN4XBta0/k2Go7/Zxkhk29ZGt5DpQQ5
	QHu/7v0o8NcCKZw4Q3FlYGtRHK5EegUH/vndkdIevqUwsh/j+xio84X1giHlAFY=
X-Google-Smtp-Source: AGHT+IHjdZppfPqEvClBJTWIWs40pCl8cHNWOZZuW2fr87bGjkqXIqQbLjNaTTzzeya/92bEg6KDWQ==
X-Received: by 2002:a0c:f74a:0:b0:69b:77b9:801a with SMTP id e10-20020a0cf74a000000b0069b77b9801amr8482676qvo.58.1713357814199;
        Wed, 17 Apr 2024 05:43:34 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:f28:b0:69b:2455:2edf with SMTP id
 iw8-20020a0562140f2800b0069b24552edfls539100qvb.0.-pod-prod-07-us; Wed, 17
 Apr 2024 05:43:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWIDDm47yfmtojG2C4rjmfKGzO/U5CGCzR3xUPfutUe+0pCkBRJzcGUz8tp+ZNbHKMuBVX0EoL75sHM5GKNt52w6YMK5ZX4CT8L9M+M
X-Received: by 2002:a0c:ea92:0:b0:69b:192b:58e4 with SMTP id d18-20020a0cea92000000b0069b192b58e4mr16940115qvp.57.1713357813009;
        Wed, 17 Apr 2024 05:43:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713357812; cv=none;
        d=google.com; s=arc-20160816;
        b=vKpHYEuU4Q5GFCXG9I043gMP2z0oF2R3WfevR+w4ITnqWpRkUkGkIlHGcWZfMC/dNl
         MEn1ghuE1l0NTzRxyEPEa229rvDP88AEaMMZRRjn9Ww5T22Ii/D71uLSUN8cEi4L3tF0
         AQVuGU/WcX8h2Fg1efdM/n1AHc8Yhq1UeyCkg4XnWOJ9fSLEvznj0mzAC6PxjtGAiRkV
         xHVh/eNxBD+n6ubCyepKfPOGmXLLv8uflpGLbmNVDxllKHKl6DdqCqXUibsbBtUlZt3h
         FMMJWHz04a0OByKePQ1S86laUPEkibSTTRG8zoUMdTNng4ULLrvLNH2dU1IySi6W3HtF
         jaNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=XQ+8BWLuk5Nhlu52Rcw+wKJaNMJ+BLizgdlHiDJi9pM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=sJWhBK6vmGW5Ae+KX/E6CCS9B9yU5MGKK/EyX62C/RvRS3ujbxPoFVYUyso4yNKVcq
         nMZDD/gP2k7+G1snuWc2opgqDxkqiJ9sGczq4ZjGS3q5geCk225CZ13TVMBalz67b8q7
         1NZbq/+5Kh5HPTXp8GddaD8ttKbH/ADPPpISqVDgJYb5ByKFEqsU1M4DX/u1inRGORCJ
         lGpo0Dw4dGkLNfbwTuQGRSY7eiXlBBXc8A98IErQ/i07BIZXx5A16EpOG32LpAdsEH8j
         q2awBkXOp0wVPzgX0uO2o0V1xBabooQ35hFzA7830knii/ZzmOxmi83OSh/YQ4cQ5Bgn
         Pw4w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id l13-20020ad4408d000000b006a049eb259dsi781449qvp.503.2024.04.17.05.43.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 05:43:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-682-t_RL96hAPviWDJ49ngP16g-1; Wed,
 17 Apr 2024 08:43:30 -0400
X-MC-Unique: t_RL96hAPviWDJ49ngP16g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 53B5928EA6E1
	for <blinux-list@gapps.redhat.com>; Wed, 17 Apr 2024 12:43:30 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 502E9C04227; Wed, 17 Apr 2024 12:43:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 17FA9C0157E
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 12:43:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AE6FF3C0ED5F
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 12:43:29 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-179-3eGdYLSePkmdZrJFAXD2NQ-1; Wed,
 17 Apr 2024 08:43:27 -0400
X-MC-Unique: 3eGdYLSePkmdZrJFAXD2NQ-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id DC09332030
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 12:43:26 +0000 (UTC)
Message-ID: <fafc2ccf-d81e-48cf-8354-c7f4ec71b95d@jasonjgw.net>
Date: Wed, 17 Apr 2024 08:43:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: change timezone
To: blinux-list@redhat.com
References: <d2d56610-4db8-7f36-7fb5-977a4d77a1a6@panix.com>
 <779bf89c-4808-0d59-4ca1-952c09d00fb2@panix.com>
 <66df8141-f3ce-9fd4-8522-c7bb575b1c96@hubert-humphrey.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <66df8141-f3ce-9fd4-8522-c7bb575b1c96@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
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


On 17/4/24 00:45, Chime Hart wrote:
> You know, many of our mobil phones ajust time-zones as we travel, but 
> this laptop never ajusts.
Your mobile phone has a GPS receiver that can detect its location; your 
laptop almost certainly doesn't.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

