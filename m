Return-Path: <blinux-list+bncBDYIZZNASAHRBG5NSOZQMGQE4C365RI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EBF9013DC
	for <lists+blinux-list@lfdr.de>; Sun,  9 Jun 2024 00:09:33 +0200 (CEST)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-6f9962c97d1sf198702a34.3
        for <lists+blinux-list@lfdr.de>; Sat, 08 Jun 2024 15:09:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1717884572; cv=pass;
        d=google.com; s=arc-20160816;
        b=yavAlPaqXceRUdzYXrRaNmfQGdMS5hUS4DpIiv5wCEX7yYGxJmnghR+qiT18UeItBa
         aIKgewNPdkuo8a9EpCTnIEosTsBzHnOVltxiwalrAUAD7uLCJQZbn4qUmMrW7M7Yj9oL
         nErlpFpNGWy6wykU4TjU9/9CGU8kMWS57VcWJ+wZ/vX2+N7VN1mr1YqJnhM3wwfX1VVK
         8K4xxlDU+5Gvbjq/bTOwPXq6UOOgG4lDd77VJ/o7JtBRny77DFDwWHi4FTsUdo3h5VDz
         TYO+l7dNTos2pZC9Z29XPnNY3BAcv/HQqbVGpWxgMPDsfC5jvGN++LkSOwvs1KqCOK85
         mj1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=BtiWs+SwfdTEkgHnnmH+BWXTmD8kJyLmiW/dElAzh04=;
        fh=BucVZwjtP+ryV5vkL0x21m6Uou6FJQwfM5JNv659QY4=;
        b=Y2c2xoXKnlilCXYPNrvQaakzjvfryxpqnRJKmj5GX89K9HHjckR5Aevke2iGyZOuHR
         5ok/umlzOviZi2UJntQNPif2Fj69UlK2/dljwf6XK81OdILQZYB5vrkx7X6xLrDJB2cM
         krywYoe/Be2WR80lRL106wLV7iGC60wkcly3wa07K7+odlJhY2VG70D9JwMQhSCWFhgK
         WtzBCFPR7HKFvJ+XWXyX7Mmh+WMqBMSuw6xESKVkCLIkkdj+At5oD0Q6k+YDMcPRoHB5
         JPygq6lPkNO3ERDFiDcW3xFu0JahGhNEraShFJDH5KBVej1Oty021lOz/EyT/d2UEds7
         5Jwg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.46 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717884572; x=1718489372;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BtiWs+SwfdTEkgHnnmH+BWXTmD8kJyLmiW/dElAzh04=;
        b=bNjpGhzOiDc1L6DpeLWInEZYsNLyqlg0CpO/Dohf8oBoUkmz5CNqxPe0Lc7zA8VcHy
         Eep0Axr6lLZQleGShT8AqnHkvRvsl79DQ419XSadfQ90eEYg//+pzJuxlLXkiV5JHlgT
         0pW0i2PYDzczi9VQbzH8/EKRdm2L6jps8DWTkQXv4mLeuAa4jZIiH2Qi+cQnVmHzMW2s
         mkMTdqXMQELR98TyEuUT2kdR7zT/jF8LSixRiPlMu+ICMBNc/ynrvhrZXQ47VycQePxL
         gbarsN5Eve5WUDj0MMn21oJlkP5Y15w+xmT1zLy1zHtO1clbO8dgFwA26vW2X0Qf+WLv
         bUsQ==
X-Forwarded-Encrypted: i=2; AJvYcCW87grxQq1sW3JAjHhuaW2dJrN/Bf8u4avYiVmTxl28VPNvo/7yEpGAz9P0ATGn4qUp8yD7bMl+xjDFaBfVpyDke2+q1JaXS0Of
X-Gm-Message-State: AOJu0YwXb8j64muR1Ejq3JAS46PgpTxOrcEL+dLQoZd81375cEnQT08+
	2Fu6yU2EpYk7j+gHuRPkQgW20ZqffmQ69sd+KobW9eZFXkIuEvWTQVLZK7eW6g8=
X-Google-Smtp-Source: AGHT+IGrEfaiD2bMPSd+Y+Jz5dE+pwNO+Tqf/1/JLSVHryI+XpFcg38QdZm91teln4hXYV13NlNmdw==
X-Received: by 2002:a05:6830:14d3:b0:6f9:78f2:dff7 with SMTP id 46e09a7af769-6f978f2e0demr2399166a34.24.1717884572005;
        Sat, 08 Jun 2024 15:09:32 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:aa43:0:b0:5b9:8998:877 with SMTP id 006d021491bc7-5baa9f736ccls2288856eaf.0.-pod-prod-05-us;
 Sat, 08 Jun 2024 15:09:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUL2WsL71bARicEjz/6jrPRbPIcrFUL42oHya/JVDk/oHiIivtfK3NZrf1GgfzV49e+AMoaHBm8/CBwbVwKChUuF++B7SzlfcgrdwkJ
X-Received: by 2002:a05:6808:1596:b0:3c9:6e55:e24c with SMTP id 5614622812f47-3d210d27ed6mr7422582b6e.11.1717884570978;
        Sat, 08 Jun 2024 15:09:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1717884570; cv=none;
        d=google.com; s=arc-20160816;
        b=DUuzNQURv2O8fnWVO+/pMgsQVlvm+IitWXTvPZU9DydwIZT4r1f7Lue7Y6dP3OVhWg
         g4u21wcpVQZzRVPmeMEUbuZE+98GShkR/fyoun8V5GExDOzdh4/Mjr9JlUNZEr/Xjix1
         umepZyPoKk6k2MBb30L1VKrR6sXx4aNYUpw72P3Qo6PCitZq8hx5HvQT3Ivet14BFWz5
         7qBfhcPGYNh51Qmp8kgRYM+eiP5qPZTR1319yx10lNdw5G9XUFjRZp4ms4FxUx8FcxJL
         8l52y/1WZ19X/EXNgRqtkp+Yc6/V2aSMsMzz03V946y7/LfO6+sSdNt14gA+cU6/saGa
         dMOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=3LCm3HNxsDOUVOo7uGK+lKwiTX4vXdgQqR/f7kViPIk=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=kvJvS0e3ggTYrlQTnkdTRIxTYegXtjXk5uWbhwxn32bz3Zl8UN6DTq7/c6zmEDNABh
         t5PBkZ5cRVDWwfj1i0dZqkfdOtMngBeOFMUoDb0wVg2PjCxrHkHwJiNJP0HrSBoM8FyP
         nE9/+6ER9EjEE0vQosuqi8PsPt6mzblt5ezazL2ZQD9vUBK/eJcUQSIF2k3qDM0/QVA8
         wOsz+3IVqkebK2SljFINWS2SrBtP/YYFMeOI85JfHUT29+HAn+8uAnViUoXNxsjwoqCz
         MEvygwmkxgu1IVgXTkzosHuRDW9igOT2Qo0oDaW8tCulGIRMJYupRLZ1llf8Q/YsxbWJ
         usBA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.46 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b04f967e17si64211576d6.263.2024.06.08.15.09.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Jun 2024 15:09:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.46 as permitted sender) client-ip=209.85.160.46;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-424-YuW1meZpOY6a3GEmL35_TA-1; Sat,
 08 Jun 2024 18:09:29 -0400
X-MC-Unique: YuW1meZpOY6a3GEmL35_TA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4E239195608B
	for <blinux-list@gapps.redhat.com>; Sat,  8 Jun 2024 22:09:28 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2355E19560B0; Sat,  8 Jun 2024 22:09:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 209B619560AE
	for <blinux-list@redhat.com>; Sat,  8 Jun 2024 22:09:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 68BAF195608C
	for <blinux-list@redhat.com>; Sat,  8 Jun 2024 22:09:27 +0000 (UTC)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com
 [209.85.160.46]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-98-TaeweZ9yNz2MKC699Fe9mg-1; Sat, 08 Jun 2024 18:09:20 -0400
X-MC-Unique: TaeweZ9yNz2MKC699Fe9mg-1
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-24ca0876a83so1710588fac.2
        for <blinux-list@redhat.com>; Sat, 08 Jun 2024 15:09:19 -0700 (PDT)
X-Received: by 2002:a05:6870:58c:b0:254:994b:5e6b with SMTP id 586e51a60fabf-254994b959cmr2648590fac.44.1717884558077;
        Sat, 08 Jun 2024 15:09:18 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-25448061564sm1553402fac.38.2024.06.08.15.09.17
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Jun 2024 15:09:17 -0700 (PDT)
Message-ID: <324ee61c-2792-435c-b05a-30ae5cf0784a@gmail.com>
Date: Sat, 8 Jun 2024 17:09:15 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Trisquel
To: blinux-list@redhat.com
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi>
 <20240503123117.6vhsfjpfuhjgwxno@begin>
 <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi>
 <20240503125138.ccmtstpyuyyyyf3e@begin>
 <4703c033-5eee-4d95-b6c2-c1e9a9ddf089@harrastenurkka.fi>
 <20240503130413.rxcx55qhjx64utco@begin>
 <11a8b732-c9a8-476f-94d8-34a1f8fe2bb7@harrastenurkka.fi>
 <7792665a-af52-4379-bf77-2adb056fbe7b@protonmail.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <7792665a-af52-4379-bf77-2adb056fbe7b@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.160.46 as permitted
 sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

I have just installed Trisquel 11 on a duo desktop.

and the installation was going well until the end.

it gave me a fatal error and it said it could not install grub boot loader.

so even though it is installed it will not boot up.

the partitions were deleted before i did the installation.

so how can i fix this i tried this twice.

any help would be appreciated.

i installed Trisquel a while back on a dell laptop which is a duo 
processor as well and it works perfectly.

so i am not sure why i am having issues on this desktop.

Rodney


To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

