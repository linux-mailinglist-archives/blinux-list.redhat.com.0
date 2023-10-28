Return-Path: <blinux-list+bncBCW5NIVR6ABBBPME62UQMGQESXFDQQA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id D846D7DA9AE
	for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 23:50:54 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-66d24cdf232sf44941786d6.1
        for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 14:50:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698529853; cv=pass;
        d=google.com; s=arc-20160816;
        b=YHUBwMwcGLpi37IjJPm6gR2bvzzDstS0CjPxEQAQU8Y12ZAyeEK9hK9QYWPQBFxiu6
         bsmGM0R2dFbxKHLYo9mWBSF8f102a4DYHAagmKfreF9hv6mytqsShsgTaZG5iSEg3BXz
         9MfTcFNCrwVB3RzjQvFMMEeGfymILGhZKsSR7yppHy0Qc8G0u2ZzmQEl8BqRiEWBPvSE
         ReVsjuSyo9VM6RkCosepJAEfgsNFbXW7StOqE+PSRAbk6gcbbgGNl0HPJkA4g+yzMVjN
         Q9Svv3f8Mi9v2Uj0E+lFg8+eckRTL1g7iAdpWVuAYtfjNU5qfiY8PNho2Mcv8JdJf+PP
         3+lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :subject:from:to:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=yOsbs53WO8u7nAQV1/hudSZuLEqGlDQNiLzO3Vv+flI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=tLvBkLKQV6m+KMd78Nq8wP63Kyu4xSrxSsZ4kUotR1PUice3hE/+KsALWjhykmaHpp
         hOkFn4DcUlVipvI2FK3v5Zc92CnVxDHz43TzUGDdxzzGt6pt6Jv+lf9zWFM6GNKX0wrZ
         mwgQXCSiTmEgUBBmCOBZdW/n6CmT6yUMbrjY+aDGy7SwjtDxXSjunvkwCD/dZyBC/28G
         eJl4B5PdlhJkkKeaGQlfHL+09iCtLtQugIuDlWBceBdx8+D3lCr7dDTZqQ2MWf+yoZdk
         hUMsdUuzWusL27J0fgdnnKCuX26a4/OKuxpYZwnCg6oOZq2Cpt8SLB8yiqIpMSLADO+J
         m59Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.218.43 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698529853; x=1699134653;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yOsbs53WO8u7nAQV1/hudSZuLEqGlDQNiLzO3Vv+flI=;
        b=ZNHKwuB+95BfrzDPH4O1ppAVEVlCR3u50e56effIfCn8hUS0QrHDYlgEKve0lQO1z+
         hfM9Ne6ka1oExrjsvX7YSZQLMwu9Cg54tEdkFtK+MD18H6DhfOU8mQ0dUqjjuzGCVtL6
         zZL41kApphBZJXUxIWHwuAbLTytxBea1iUptkQSQt3OAfyJKtS6nrmSav9TUYz4MpPiF
         OaCw5ZEi9s1QHqXdjnM2G5K2KdJV5YLPBFoNWDs3SxqRYjJnERn3l76OPM3wyEn+OyHG
         Tor3Pop+aYa6co67QQeT0BQcDqonBO2xGPlwti2LiRFQ2QtDxERMT5VJeyo/f2pmKQtz
         2Osg==
X-Gm-Message-State: AOJu0YxuEopO9e2tTdANfBR6kGG8hP8Ea7HTrfMU3nPjLjVDQGgpqRMX
	GvRIVKupdU+DVp9RWlNpduq5MA==
X-Google-Smtp-Source: AGHT+IEmUCs34oNIL61QcRHHmACX1cr+gsKPk5PGjXCBGKzvODt+YzDVKMTS9OK7zkqKt64bfNhnAA==
X-Received: by 2002:a0c:b394:0:b0:66d:2b1b:acfa with SMTP id t20-20020a0cb394000000b0066d2b1bacfamr5931469qve.50.1698529853586;
        Sat, 28 Oct 2023 14:50:53 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:fdc8:0:b0:656:3716:f1e6 with SMTP id g8-20020a0cfdc8000000b006563716f1e6ls425930qvs.0.-pod-prod-06-us;
 Sat, 28 Oct 2023 14:50:53 -0700 (PDT)
X-Received: by 2002:a05:620a:d8a:b0:779:d1ea:c5cc with SMTP id q10-20020a05620a0d8a00b00779d1eac5ccmr6707693qkl.32.1698529852862;
        Sat, 28 Oct 2023 14:50:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698529852; cv=none;
        d=google.com; s=arc-20160816;
        b=uKRPy78qEsC6+hqI5c9ectc/ZszXtJKhTPeb/fZV3S/aqEpUKGD/K+/I+tfZQzz8HF
         EkoDKFbb2S+tXsNAGfRuMtM0E3YEl7PZpL/3ouaI2WUHhM0Uj2flfdiq/njCPAtdDo0h
         9By0ndKCCq/kvemggp1R22cv5LPg+luSRoa4n0MwqB6EEbzRlU4HiDK+JqFRdxNan/Xm
         Q7/ch0ktTTzSjR8g3b8q7uYfAK7oTcS9LmeaW3hb3SY0owovmhxBHSNixW7mDytn5r0W
         CtN6hEBN17OdvvyvQA+qOsNujTWAqmgfWypsdwoykrVENoE+puSDyHbc1OVbjrf0qNLC
         j8BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=fYNCoh3MA8nJ0PsbPOWQ6dTE8HPPCz5GSLBsTMlnG8A=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=WKEFa344P7jDToPBpycWZewoi/fURh5J2BviSWR9GtglvbNMcsdcESpJaq1B1DaqJ/
         jjVNQbo5WSeIwu0m8Ten+9/yQ+ZEd3XrLc+Khr4lBedKZIN43FK6w+5+KHoTtgang9YT
         3w7qo0r+9LKnjpWHLHBNuhAsx3r7Yzpt58pfmCSX4kTFic9Oml0wxlcXRyZ0dXKeC0Cv
         STkH/M2O0YPIvjECc9q48Ng665WvXeB/jXKT/FMTe3x/LxYZv9WzzOh/pyFdWVJrRVwi
         ILH0KLB8j3N4BOtrlhLJTvUrPhN+H8BAsGO81TZqnBQiCCxmYLGSw9Ub4q3n2rQ9O915
         ZqSQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.218.43 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id n10-20020a05620a222a00b0077430a3a734si2757880qkh.786.2023.10.28.14.50.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 14:50:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.218.43 as permitted sender) client-ip=209.85.218.43;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-617-d7BBh_NENnqWnEKpuiE5kA-1; Sat, 28 Oct 2023 17:50:51 -0400
X-MC-Unique: d7BBh_NENnqWnEKpuiE5kA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 684C8101A529
	for <blinux-list@gapps.redhat.com>; Sat, 28 Oct 2023 21:50:51 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 651522166B28; Sat, 28 Oct 2023 21:50:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5CD6E2166B26
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 21:50:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B74C1C0518F
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 21:50:51 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-381-aW7TGC3EOi2jT__Gg4Fu0Q-1; Sat, 28 Oct 2023 17:50:48 -0400
X-MC-Unique: aW7TGC3EOi2jT__Gg4Fu0Q-1
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-9d23be183c6so63185666b.0
        for <blinux-list@redhat.com>; Sat, 28 Oct 2023 14:50:48 -0700 (PDT)
X-Received: by 2002:a17:907:7603:b0:9d0:2da2:ee64 with SMTP id jx3-20020a170907760300b009d02da2ee64mr3725621ejc.70.1698529847011;
        Sat, 28 Oct 2023 14:50:47 -0700 (PDT)
Received: from [192.168.1.16] ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id gr19-20020a170906e2d300b009b9720a85e5sm3334557ejb.38.2023.10.28.14.50.46
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Oct 2023 14:50:46 -0700 (PDT)
Message-ID: <87bd0278-a6e0-4663-8cae-13c678aa4d91@gmail.com>
Date: Sat, 28 Oct 2023 23:50:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
Subject: Installing Arch to an external hdd under Uefi only computer
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.218.43 as permitted
 sender) smtp.mailfrom=vlcekpavel93@gmail.com
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

Hi,

I want to ask any user, which have some experiences with next thing.

I want to install Arch Linux to my 6 Tb external hdd. My computer=20
doesn't support Legacy, so my question is. I will use arch install=20
script. When I choose use full hdd / external hdd /dev/sdb, will it=20
touch the selected hdd only or will it attempt to create new uefi entry=20
in existing /dev/nvme0?

And my second question. Speakup hightlight tracking mode is fantastical.=20
Can be braille output also switched to highlight tracking mode? I can=20
navigate the installer with speakup, but braille shows the first item=20
and when selecting keyboard, language etc, it shows different values=20
than speak=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 up says.

Thanks,

Pavel


--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

