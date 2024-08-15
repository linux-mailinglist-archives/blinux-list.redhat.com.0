Return-Path: <blinux-list+bncBCLPHQH4XEIRBK5N7G2QMGQE5IRN4SQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BEE953ADD
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 21:27:41 +0200 (CEST)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-7036b5eef34sf1330849a34.3
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 12:27:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723750060; cv=pass;
        d=google.com; s=arc-20160816;
        b=bfYwyEoolRei4UOULD5r2XQHJJ69/2vhR97eiirGcO9xV2CYp0SqnxMOeBSz3xtaam
         ylS6yNshxCILQWQ1aFXdSTlmOT19NtYm5/zJf4Zugepp5F0pUoGdLwhSmIGkbU9l/4BB
         ZYgG0Kr510XrPaPbNdmv9EEw1D7a+XyA5WAMjQDkKZNvZ64ToEHwHESYTApqbBqBxgW3
         jLdyapObPs+jFZnB9yTHPG84NPZQN5/03txFX4Ezwm2btGpjEcIZ9NRnDdoTbV3aF/Zd
         3TrdQur2/C6Hlg6SO4wbfCbhP2/1K9FBUbS6TTZXuLWa/XFCFk9Dru3xUe5d98/29Vf/
         SEAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=ISrMdFmIXfyVZaXBaNMgw7HAKwhDte8DxiezHq3rgM0=;
        fh=Wxqjc6zhIS2WatI/z2SX3UETmv81R2VFmNM0PwGr2ro=;
        b=ljzBVmvV4irRTzMayEnlrlMvgVG5+BRMgH8kVuI63318aOqUpvoLWC3wcFvpSJDDG5
         tnlVF5vI6esd2SYHstASNyvbw+yh3oihaN1WSVf6DhJQpkiVjHGDcmkbRjcARoEC75cY
         eW3DQKZj7BsgddB3Ibq49YoRK3F5/gHO9Q6HxSHHYrS5VgV4tOmGoh1+FaE8HLuxHuAS
         Qkar+d+0AP/urHsf0qzuS0bC5u0l1BXOTOzV9P7zA2w6Ae10lhWnKgaw4JgRG/Pt1+ty
         Ft99siOecBy21AVhSgOBpaNywjgvl4WkvC2+0LXd3kixAijw6Lf/kk+45xvWR3wDxHdQ
         +cxQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723750060; x=1724354860;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ISrMdFmIXfyVZaXBaNMgw7HAKwhDte8DxiezHq3rgM0=;
        b=tYXaCt3PfiOX1W2ly0cthcIwyLlhPLa19CXCKuetoyxMUd0H3I/c7Y5RqxaNvltqWJ
         YULQpPa59HLlIHw+tJCOJjGzzopdcreIIOH0HJX60ckSC5cJhNiWnwnxs7/p77pKXRHl
         lJFpL/omXTdXbju+kyFEB5ZvDulh1h6vr6BgB+j/uKoqS+RJv5Mj/2s16X0gYlokg7WY
         6bNggSeW1BWjDJ9JgnhQyVgsCkUOxxXoXRd7yyv8c8+NETmdnVk3rc6M7ipgx1ON779X
         o5yXbK5Q7gezmizTDfysqVC0BTFpFPEdTkJP7RoiP1FjqqzPKBmjonIplUH0qNLivgQ3
         vbFw==
X-Forwarded-Encrypted: i=2; AJvYcCXjfqgOeekOP3euUifC4LWufhSBUpi6K3u91na/Kp0/apMEzntSg8O13JU0HF83n8xJs2ASNuXeoxxNnSn/6B685VOHDLJh41Md
X-Gm-Message-State: AOJu0YySrgnCkCtlVvEc9F5jBV6CiiM9rE+jGc4XRSUwIcdZzotV/1UJ
	pm0/JT+kGd981MpEtseOwG8cWBZeyp+UXpXKwe04ylD97rLqB98+e7cI1JSZpnc=
X-Google-Smtp-Source: AGHT+IG0rig4BZuXWnHC1DXdUHM9rTKTb+W+P5amjIXV2P4lLudxzsmergnBBmSSG4uEGgXhQTj9Ag==
X-Received: by 2002:a05:6830:2656:b0:708:b334:de64 with SMTP id 46e09a7af769-70cac8717a1mr770462a34.13.1723750060033;
        Thu, 15 Aug 2024 12:27:40 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:199f:b0:447:ca9a:34f2 with SMTP id
 d75a77b69052e-45367475caals20205111cf.2.-pod-prod-05-us; Thu, 15 Aug 2024
 12:27:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW61BZb5hNz0Tv1L9Cc7rDL06gIsnczD6lG03AJ4I2rPXq3T5ykgVzPAhMjW3K+xVy4TpyBqcyssroXVzxxsDdgh0ZgNac+1z4vwP+S
X-Received: by 2002:a05:620a:394f:b0:792:f429:9e9 with SMTP id af79cd13be357-7a506937effmr79870485a.22.1723750059109;
        Thu, 15 Aug 2024 12:27:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723750059; cv=none;
        d=google.com; s=arc-20160816;
        b=OHEh5nKNLmywZLZ5iokWKtPfUyhX17tDzFlkRKNNbZS2iiWUfeLCn0XPX2r07FjcB7
         BdJqdVE/QprsYADYi1iraf3VzFFtVIVgdwFSKkVebAe8Ur1JiBXTrlHx/U9DXjg+FSUY
         HLMVbqDdKR71Hu6IiXVUZHIvI3P7G6BTPOSWAXuObpE+FMMqZ7wcmCm24qxMnWnMkHn8
         HHB4LoPULeh91hbEjkAv0vWVCaTW3SVCYQiLeSM2xygQU6GJVdqm5FiKRWFoIYpkCtHl
         N7ZOZtFdX+BbD4kaw+aebK+Zk4lholL0cfpkhqV2PxYSr61raXd/tycOiE70JoTvsq0G
         E1Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=cRvaVfBuXaWkj7+4Brv+l7AL2X/TlHJ2HzeRG1BT+rM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=WVui3pXcphlNnDHdLOcGeaHDAOy6Ph6ONMwARbLAj3LZPVoSvSNrXJapega7Uj/fuu
         gIqzYlyqViYxI/nCERzYrz2g7ov2MZ2+biqrnDe6zOqsMIHwsG4A6LVrUARVPj+V5P7j
         A/R2Cf2FCTQU5XvXXp89HOUIQ4G5k6wj6uM1aeRubXEDf/D9dC56KpFFGlRRCpGcZuP/
         Lx2meHkxmdlT0CkKoD6YE23HytTr5pbGXBOEg2a+B4iY/xT3nRP0dHOWnjH2eg48t70R
         g/XfswzFNrYvYSeN+1xgpqoirCRnhDbQfLKDY+BKZJILx0o0KziOQ+BkLkGjHHUJS12t
         C3EA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a4ff127a7esi235534985a.752.2024.08.15.12.27.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 12:27:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-638-Cd0cnLvKMmWokGUV_5sLBQ-1; Thu,
 15 Aug 2024 15:27:37 -0400
X-MC-Unique: Cd0cnLvKMmWokGUV_5sLBQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 98A781954B0F
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 19:27:36 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 932E73001FD6; Thu, 15 Aug 2024 19:27:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 90944300070A
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 19:27:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DF44519560B0
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 19:27:35 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-538-rjj7X-fnP5KlUrDVZFmbng-1; Thu,
 15 Aug 2024 15:27:22 -0400
X-MC-Unique: rjj7X-fnP5KlUrDVZFmbng-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 54B853206A
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 19:27:21 +0000 (UTC)
Message-ID: <be01736a-fac7-4689-9054-c4bc6d314014@jasonjgw.net>
Date: Thu, 15 Aug 2024 15:27:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Can I Easily Run Wine with NVDA in Debian SID?
To: blinux-list@redhat.com
References: <e8a061d3-79a6-e762-780b-1c6b6e205ef0@hubert-humphrey.com>
 <82e292a7-ad8f-430d-820b-b51d22517e84@gmx.it>
 <9ac9a8b2-1647-aa75-5015-a7ae1259faad@hubert-humphrey.com>
 <2c9cf472-2d34-4b2e-b1c4-0c71f0a99e08@jasonjgw.net>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <2c9cf472-2d34-4b2e-b1c4-0c71f0a99e08@jasonjgw.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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

Also, if you're running an "unstable" distribution such as Debian Sid, 
the assumption is that you know what you're doing with respect to 
upgrading and downgrading packages to work around temporary packaging 
issues. It is also expected that you can write informative bug reports.

If you don't have experience in Linux system administration, then Debian 
Sid probably isn't what you want until you bring your skills up to the 
appropriate level.

On 15/8/24 15:18, 'Jason J.G. White' via blinux-list@redhat.com wrote:
>
> On 15/8/24 14:16, Chime Hart wrote:
>> Originally ORCA was working until Python3.12, but even trying an 
>> older version of at-spy, ORCA will not run, but for errors.
> It's fine here with Python 3.12.4.
>
> To unsubscribe from this group and stop receiving emails from it, send 
> an email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

