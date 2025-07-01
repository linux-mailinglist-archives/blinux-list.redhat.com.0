Return-Path: <blinux-list+bncBDYIZZNASAHRB465SDBQMGQEYJSQKUI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 62340AF0336
	for <lists+blinux-list@lfdr.de>; Tue,  1 Jul 2025 20:54:46 +0200 (CEST)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7cf6c53390esf262851785a.2
        for <lists+blinux-list@lfdr.de>; Tue, 01 Jul 2025 11:54:46 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751396085; cv=pass;
        d=google.com; s=arc-20240605;
        b=dbyS5FD8bOZBk0Z0RKxCHXvdeWLnj88m+K+QdkXxEkUT1scDjS78MdW5uph6jHUXuF
         6oD5Ai3SXf4Yo0HcMEK+zWlWuozv1UZrh2RHJ2lOUdidsEwbX09yXahCxRSEuqYqdJHW
         MATOgS0H5OURIv0u+ZPf53yAhNOiXzkElb2XXpSRAp6AowAOY5TTUYcWubQIMImZn3KA
         +8XUI/2jYuPiF/rG6hL6HdTobR7NcftJ8CJI5mUNaEZL+m95MrjIwhLQEcLo0Zs0KHkv
         yv4CJlEsW5ciHcuntyt4hFRmnvQh0rFN2dNTcT1tRQ6/4Oa3lsTU6XlUFsemfasPP8NN
         pDNQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id:delivered-to;
        bh=F+rcqeLntF1Nx3bKpKDu8zGUnD0oY9VlpwfC1jVV1ng=;
        fh=MTybwV6SeFyfnRKTcVdzxCjmByVqrtKhXtet7UEQE9s=;
        b=c6coymdKYJQyzMNeWRNKQvxfbMHhULZOvekp2tqf4ice42zxzrK/A3osE1jglR2H74
         PJV4L1MultEmnoCEOZwF+RiDZc5rMYa/Cgfr3kwlyk5fxO1WLAtphBWGlsGWruoae8IT
         xqWBljBlVbDZs9W6sGLthQyIUxOcV1EiZSfp0qpGf4/o83hMrX5dwROK4asvw5dzP46W
         mwj+LET5B3EUMV+r3Ay417HhPmSBoScCyU+OKbBo812mSft7C01D+MvTvhb3S0QQO1Ej
         h+/sP4Xl2RurXDEZb2vbnhv0lrbXmC6aXi4QiSKKFJDDEGOcOXfVgHk4HszxjcPHxLRr
         cN+A==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=J8g5gnVl;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.170 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751396085; x=1752000885;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F+rcqeLntF1Nx3bKpKDu8zGUnD0oY9VlpwfC1jVV1ng=;
        b=hyUYWcWh/wkEeOqBYbyOsuWxW8qxvS9TJJD6SH6RQ/S7pbikrmGuImkHtKeI5WXd6r
         0X7ve5QqWZPxAwDI5NYBHloST9z7KPVIqrkU3hzOSHXXbRFgmAoaZXnu4a4GAf1pA6Ct
         0W+n3xmLFvAG5PYA0vWbXuUixQ2zm6OPsTwYjiD/JN++FXmDVzBXau18nW9NA2PGdSMN
         HfwLE1+9cZdTF2+kO5wAPbI426lCDh3U/kBcoaFfUDsLc6PlFfYMr8ghNOBwwDbIbktj
         ZpZ6Dmqequ5OXD7iVh4D680geRR8HlHCsi+gmbCS5k9tOhRxa8B6qAY1Y4It1JErOY+n
         E7Qw==
X-Forwarded-Encrypted: i=3; AJvYcCVb/IQ+tsJNjVOnmDnNyy3g/Y8jEIwo5vX+us1Wn7SqT9oHg/sEm1jSha+Y67ydEl8077rxOw==@lfdr.de
X-Gm-Message-State: AOJu0YxOwda6TL6V5imqiQvQcMfx64uGoLH2dBG+U9RtltTAcI1aPjIV
	iOkC8tGB+zrBpw4UiHUzGzCioJ7bvjjBsbq5HgSy9j41tpewXGgq0Ww4C7/d4pgoXO4=
X-Google-Smtp-Source: AGHT+IGxbrpRtBdiUxqOmv8fngu5aH9U5iv15dlbz8tAerlT8EFZEx8kYM3uhAInqRQ84zVemypHwg==
X-Received: by 2002:a05:622a:1311:b0:494:b914:d140 with SMTP id d75a77b69052e-4a9769f19f5mr1825611cf.43.1751396084336;
        Tue, 01 Jul 2025 11:54:44 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZcTj9R4b5JU1e/rin9Exb0VMVHAOofIbWj4xfbcVsbrLA==
Received: by 2002:a05:622a:cc:b0:4a7:f5d3:1d73 with SMTP id
 d75a77b69052e-4a974d7baddls2964941cf.2.-pod-prod-08-us; Tue, 01 Jul 2025
 11:54:43 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVdXOPT785ae7I0NOr/si5I7XjBxxONNo8wBTWu4y4yLfJVsN1KoEXHc7hObtqObWZtIKiIaM+5U5azpw==@gapps.redhat.com
X-Received: by 2002:ac8:7f42:0:b0:4a7:2f49:37d6 with SMTP id d75a77b69052e-4a9768b99afmr2661251cf.5.1751396083180;
        Tue, 01 Jul 2025 11:54:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751396083; cv=pass;
        d=google.com; s=arc-20240605;
        b=aPT0An3yDi0eFGvW7XeJzTT2OVshO7L+peCOGCtnDcjjiBx7sV98PziYU3UeE5ejmV
         JvXT6rK1hs3li95bOKIVCfge29cHB/2I2rpNveB1q7bIKY1dY2tsxUgyvYnwldsPL3GJ
         jlbOeeTAaTVdC+HjVAv3G213vo3B2MMxZANDQrasyFmOZblv9GJou+henokj4aaegKCd
         XgTglEEZffSpc9+kmKYSAzIUheVa11+eEJyIqqvVjVPErluqMJDa84MwbCYfkYqPmArj
         6PALqplTSjUrn29eTQNS0CfbTJ2J8dt0MRJYVyI9z/2bBKBP84ag8gkl/+n69/cYVloC
         Uz1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=nMcgMSJkJAuvdnsrq1/n3sBvaf9yLC7mBMTW//l2CWg=;
        fh=TQHzjPVSoXIcwOV9Cjs60B+YArTUdW7FKTTrmDuHnEI=;
        b=VwSf1gOSfrMIZBRfSrAr6z2MEhvWNJ4y4w6E0Y/j945St/d0LZNuc4JJ2Ky57oMFYE
         lYpor4Lf4Ug/e44qUs0t1ACuZqEt/MS2+CCXPimqoCGdwldupDtNACfQaQgF6W1prC5u
         0eIZjz7hlwGYCEV1hewpvtje1Qw5n6SWgzWPJu+IYR9LrSN3PWyr0ATU7TfIR3GHSmQL
         lIxLeuY6VuknmT1g6QJ7Zyf/swAfUz9k3ed21IBX4D+YRM15e/hfy3K9Ox10u+Q0Xssb
         ZRfl7t5aLULnxh8tEeozpR0Dd2PgoIr4ulaSlyg5su48NumCssD7StW/9AFtqkI3i3tK
         eUaA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=J8g5gnVl;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.170 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4a7fc233b15si116652061cf.303.2025.07.01.11.54.43
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 11:54:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.170 as permitted sender) client-ip=209.85.167.170;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-116-VFRwTLULNoSDeMIP91PA0A-1; Tue,
 01 Jul 2025 14:54:41 -0400
X-MC-Unique: VFRwTLULNoSDeMIP91PA0A-1
X-Mimecast-MFC-AGG-ID: VFRwTLULNoSDeMIP91PA0A_1751396081
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3035A19560A1
	for <blinux-list@gapps.redhat.com>; Tue,  1 Jul 2025 18:54:41 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2C5BA1956066; Tue,  1 Jul 2025 18:54:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 291F819560AB
	for <blinux-list@redhat.com>; Tue,  1 Jul 2025 18:54:41 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B80AD1944A83
	for <blinux-list@redhat.com>; Tue,  1 Jul 2025 18:54:40 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751396080;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=nMcgMSJkJAuvdnsrq1/n3sBvaf9yLC7mBMTW//l2CWg=;
	b=YhvEUAj0RT8Xdq9KPS8L7puW2F1wsHXMx9oS1/3JCXzPTCbFBXflGr6bhcOY3wpWNCAf7U
	ce6k/iENQiKWKUSz/+4Q3PfPMoI62yuezzli4Hgkp1QcODwP6+dgJLIeqXeX/OkBA4vZLe
	lPvRv7unRCOc7mYu1eCbnyxG50xmX9nkl3G41c9HoEvCVTAZ0ePpBNR53Sqgv8QIo6m/MZ
	X5os5+QNMBtFAGKFHgZ7C8SF3kFKWU8Ux1q9ZukGt5heg1RTfj0PExO6gsv+X9Jzy5HhzK
	0g/zxDcgZNgZS/aFmNIWR/sCJ8CiNhP9Emz20MfJeKHCMR887Eq8sTROsITnbQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751396080; a=rsa-sha256;
	cv=none;
	b=hruPJmaudd9GT/jUiRdghz+1IcnMR18swePAWu7ZkdLjMq/43niuijJbcaXPmsU6gA0sRz
	ROcoHw5rWKucmy3cNEVxR5TqFrmIVnXN/dVoBH/NZ0Olyz4mj2RrlUGRnb23VEPy1SbmXu
	J2j4C9UWYDQJb20pmAVEZJiihFcvc98BHbhlbGwMJt7SmZ+OEdsd9M4NYsa0cUix+BzH2T
	44fZ1/XKXJUt/LVp2e4mMuyyyANxDZeBSUNZx9xJba07R0HB/kkY4xyf9lEhkX6dfi7nNl
	J9XQ7p/hAW6r8iQCtAsfbO5lEPipQ3Qe+FOAfPCyYUk05fkJG6oMf7qJyWphrw==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=J8g5gnVl;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.170 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-196-e4_Gt6IQOuWOv78XzVCnVQ-1; Tue, 01 Jul 2025 14:54:38 -0400
X-MC-Unique: e4_Gt6IQOuWOv78XzVCnVQ-1
X-Mimecast-MFC-AGG-ID: e4_Gt6IQOuWOv78XzVCnVQ_1751396078
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-40791b6969bso2269510b6e.3
        for <blinux-list@redhat.com>; Tue, 01 Jul 2025 11:54:38 -0700 (PDT)
X-Gm-Gg: ASbGncsv7CVz2mK5Du4AseGnrULTgAKLKP8blbnBt5VBLewGSyMtYj8IkMZT6ZZO2HY
	i3EaPH7q4md0QiiLJWJjJl5JR+nM0bLGuDo0ppsyREiZi1SmKVv5iO1jxjvR9rQZwxZEbYnQgTI
	EMglQ7naJYRFJhz1peI9EaKZiN+jU0kH7novbnmHzB0TUTJxyYPrENBPiavMBPYaIjHqGvjtuTg
	cKXSbltWHIc+2rYotfs3wHiN5xltbBVBGtc1YLrujFzfhlSIfLMD3rluHlZ598aObN3fmAiNgwQ
	zlNEiRhzYuZVw9oPV1le6o6Q97eIv7naiMWwnySsmKtUiHY68zg+LTpP6eRiFNG6T27BkzUYAXj
	fkmGM6qWDHXm9tWboSZf27pRDddFpDfjx4wE3H5K/fNDsjad7/GQQ4pyvfY9+nVxLnQ==
X-Received: by 2002:a05:6808:2107:b0:401:e5fc:e726 with SMTP id 5614622812f47-40b33e4c3f2mr14572358b6e.31.1751396077135;
        Tue, 01 Jul 2025 11:54:37 -0700 (PDT)
Received: from [192.168.4.160] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-611b857bb35sm1522812eaf.23.2025.07.01.11.54.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 11:54:36 -0700 (PDT)
Message-ID: <dcc4a156-a8a4-4957-97d2-9b9672cd305c@gmail.com>
Date: Tue, 1 Jul 2025 13:54:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: drive permissions
To: Willem van der Walt <wvdwalt@csir.co.za>
Cc: blinux-list@redhat.com
References: <405C1BA8-06F4-447E-9027-1C5AEAA63742@gmail.com>
 <c1e3cee6-2e13-4aba-8931-6adfc383cee0@mail.com>
 <62ade77d-ec43-4b39-94ef-c52bace6b83d@gmail.com>
 <55821151-f759-b07f-1bfe-af99fc9d24a1@csir.co.za>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <55821151-f759-b07f-1bfe-af99fc9d24a1@csir.co.za>
X-Mimecast-Spam-Score: -4
X-Mimecast-MFC-PROC-ID: IYACtuDD3NY22y4y1SCq0CzE0_yWXLhVprJO9SN7vTE_1751396078
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=J8g5gnVl;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 jackson.rodney.1970@gmail.com designates 209.85.167.170 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

Willem

thank you.=C2=A0 I will give that a read.

Rodney


On 7/1/2025 2:51 AM, Willem van der Walt wrote:
> Read the man page for fstab.
> man fstab
> You should get the answer there.
> Regards, Willem
>
>
> On Mon, 30 Jun 2025, rodney jackson wrote:
>
>> Warning! This message was sent from outside your organization and we=20
>> were unable to verify the sender.
>>
>> I have a computer running Arch with the mate desktop.
>>
>> it has a 2TB SSD and a 2TB HDD
>>
>> the hdd i use to store any data.=C2=A0 Recently i had and issue with it.=
=C2=A0=20
>> this drive was formated using NTFS which I read sometimes can have=20
>> issues with linux.
>>
>> So last night i used gparted and repartitioned it using ext4.
>>
>> Now the drive I can mount however when trying to copy data=C2=A0 to it i=
t=20
>> says i do not have permission to write data to this drive.
>>
>> so how can i take ownership of this drive or change permissions so i=20
>> can put data onto it?
>>
>> I do not remember it being this difficult with mint.
>>
>> any help would be greatly appreciated.
>>
>> Rodney
>>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

