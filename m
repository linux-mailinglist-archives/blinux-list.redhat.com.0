Return-Path: <blinux-list+bncBCV3N6GOXMCRBEWIQW6AMGQELBWMRBY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com [209.85.166.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 090D1A0992B
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 19:16:53 +0100 (CET)
Received: by mail-il1-f198.google.com with SMTP id e9e14a558f8ab-3a78421a2e1sf33267765ab.2
        for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 10:16:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736533012; cv=pass;
        d=google.com; s=arc-20240605;
        b=Pt21jsZmpnNdn5vOz8fy3KdhC/dSIPoIRNgDS4ChYU0aRyw2wt55RsWMEeDpqTv00p
         e0xptrSBgtoJFDJSmINToVFBaZIK+ddBQKlwObRQieOmO4uodTGJx1G2/LmsO64zZtLG
         yI2LuphlMkb2GD5USR5lAhN+Spukr6rQ54DMjEwggBaGEvb4a2e/P1aYJQrB3yahSQNT
         52Q9QBvzaIZpMnpo2f/3QnjDj8/CFXSZyvod8FkyrEKvLuRCFCZqAbMKhvbXKnAmCAZM
         pLv8DbcNMeDOE3osPumRMuT9XRfkVJhr8zS3TOUFMj6AMfqpPu6V9j7ueiGE7y65FoIx
         vfgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=z+BAsD8YVJPJSl58LIna86yqM0ttnQkKkyx0mErmd+c=;
        fh=l1CYNvGx2RxujqDxWWlOsDeC2n4eICtY/RH6fFJaJDQ=;
        b=LL50Nqdv7LWC9m2E5o5NS8dBznfz3gzfM+Cz9dFMHpcMQSFAoSRQYswGCNuyd7SQ9w
         hJHsuPKARr4yBpuWE48LlSN4P7tv/y/hhtiNbHptUBIjwfHw5+vGG9mfdYNIb8OuhwoK
         9rFVWwzxnJVYOCkUKx9jOFoFRNHPKKHG2ScJUZsphaXOOy3T66ov+vjBuDAvuMY0Ybx9
         7OQw/S3+e+m5xkpOEl70HzmPDFtgW2pmwHBPWHQHTsmu6hGNfzMHINhV97jPR95uZECm
         ILJ1/mJLCGRa4juJL2xZ8jIdIK5yDWnncoY5vLJCGGM+dWv7l99SU17sfqPQnw/yBoqq
         bQfg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736533012; x=1737137812;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z+BAsD8YVJPJSl58LIna86yqM0ttnQkKkyx0mErmd+c=;
        b=GkJqYQOlGTNuZ3sDw8a3jUi8q7b8y5MIBUzumro7OQgIvmYdFkAYQHpgp8FEFe8VRM
         jVgDJwu1zuesyHngVvgPVEDN1PrGj03abbuKinTI8J0qOoH6FhJ5O7N048xaPzJCIStx
         /xfTqwhb3SM1MkQ+7Djgqhsd6FHJKXGEitb8vJu6FVTKKLCmvj75qSwFeAldBLS9hz/7
         lI2r+WfKWcuLMWEFIFCleI0/TD12CfBqQg40csSPasZnkzDXN3DAgOTlP4+8V55dCUH7
         CfXubuEW6xyAhLbv6FUuSjjYAYR1wUPje42ZyWHDhNGqmbamrMXmDEh50DHaDLkh5JsK
         RNIA==
X-Forwarded-Encrypted: i=2; AJvYcCXIVghqQXspkJekv5OYINr25txnEd0Ep4GgcYZhNzvaJ5+G4DEAaTjm7FMj8Y3v9vKkR9wq6A==@lfdr.de
X-Gm-Message-State: AOJu0Yy10R0sTXKWvNl81iYvwUEhag79wSJb0yLnMZn5SG5GPCS6IHFY
	jKmMzk+pGukRowB3jCoACusls6xPt4MrsFPTsGwkBOjdCTl3kkZ9jOwwtxY/uGk=
X-Google-Smtp-Source: AGHT+IEIEo7GfBzQvjRaiXxMG1mETGpfIK3N0QXUJc3yKQzrgs5PHdz0gd9W0yu6sP7qSiA1MjFiTg==
X-Received: by 2002:a05:6e02:3201:b0:3a7:4e3e:d03a with SMTP id e9e14a558f8ab-3ce3a8e1e77mr90081955ab.22.1736533011577;
        Fri, 10 Jan 2025 10:16:51 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a92:dd90:0:b0:3ce:27bc:c942 with SMTP id e9e14a558f8ab-3ce475e353dls11471655ab.1.-pod-prod-02-us;
 Fri, 10 Jan 2025 10:16:50 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVj48DLwhDL2jnWPvSFTcIX7A0XoH+/PNraNMBV+9BsIp1ZNLtwfoQPiq8Oal/O0q8uiJ46RaAggpwOww==@gapps.redhat.com
X-Received: by 2002:a05:6e02:3201:b0:3a7:4e3e:d03a with SMTP id e9e14a558f8ab-3ce3a8e1e77mr90081335ab.22.1736533010253;
        Fri, 10 Jan 2025 10:16:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736533010; cv=none;
        d=google.com; s=arc-20240605;
        b=SBaqNV3yfVnWnh1Afgv3f4a8WzXAupSt6FTJsStR5Gjwyne4t/VYhvXWsg+Q9HafIu
         +wwsh8rt/N3dZEpIiXSpuY8SwkUUJaPcBhK6/jkfTEOiAO40tQXkof/VD1eUXL46d0JM
         4fgdgutCvRqmzyXJwzUYXRuBAkdi8wyedXMW6bO/Ky/t76rV9XRcc+SRriPvJfj0o5Fz
         tXUfXmDIyjWX5o3ThDtyx+YLwJsAY1YyRAATKAgAtK9JyW6g3PORMVTPY/cKnDjCg08U
         /NUJ6jlfut2s+dsXMQtFvCGlFkTK5tQ2WC2hXTdd3YGScz0q1iiW3L/tGBaZLMlNKVq6
         Jh3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=o9Wz4DsJOp+1rS8UYTsLd1sw/rD6kEU9ZAYgYBMDKPc=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=gqccE9CkGBLcmcZgemtQMGUdPvaqVAYPNuR01LfmKzlhO2TAxxAxl+XKYmVmxV2/6K
         rpr4aj4iOW5eypYcRR1WDZD6ElNsalTVgq0kgMgx/SRnTFVfZSTWgVKQGnp5gtw43oUe
         lACjvGRGapXvfzlrdzb0aTS0yHndeYDSpsS7i6wmLb+vFCGj3PygX+I+kA4zvsphqjVb
         c2VTZ1mjIA0x6IqzCVxxU697xgWxmHZuhIl+H/1k3aIbGiQKHjUzdSQQuF+4/qLM8N48
         95+p/Z/EQJmQv0ItWUjshsEKKY5gjRo1TbeN+BORr7GFowNmF+cz+IdOtZKH9CiNofaD
         nb/g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id e9e14a558f8ab-3ce4afccb62si21290245ab.112.2025.01.10.10.16.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 10:16:50 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-653--Vn9IAitPni8W8bri5MFVQ-1; Fri,
 10 Jan 2025 13:16:48 -0500
X-MC-Unique: -Vn9IAitPni8W8bri5MFVQ-1
X-Mimecast-MFC-AGG-ID: -Vn9IAitPni8W8bri5MFVQ
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8E24119560A1
	for <blinux-list@gapps.redhat.com>; Fri, 10 Jan 2025 18:16:47 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8951E195E3E0; Fri, 10 Jan 2025 18:16:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8661C195E3D9
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 18:16:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 029141955DE0
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 18:16:47 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-133-oFGHJN8PP3C91VEXiP7DRA-1; Fri,
 10 Jan 2025 13:16:44 -0500
X-MC-Unique: oFGHJN8PP3C91VEXiP7DRA-1
X-Mimecast-MFC-AGG-ID: oFGHJN8PP3C91VEXiP7DRA
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.47.142.229]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1Mj8mb-1t2Uet1raH-00dpPP for
 <blinux-list@redhat.com>; Fri, 10 Jan 2025 19:16:42 +0100
Message-ID: <28b61b1d-d204-4021-a68e-ea755c52ea31@gmx.it>
Date: Fri, 10 Jan 2025 13:16:40 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Google blocking access
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <m3a5bzvek5.fsf@dalen.lamasti.net>
 <a7efe3c2-71ac-7ad3-21f3-800f38ec6207@QuiteLikely.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <a7efe3c2-71ac-7ad3-21f3-800f38ec6207@QuiteLikely.com>
X-Provags-ID: V03:K1:/b2qeKpeGqnBFw5eIsRiuIX4BU3zAWByc7AoHHxvczlv1ePksJt
 6Cd2DFmXz8Lq4Sn3aJr7jpaM/ll6gwy6xPMO3Hf+d/LCDuC6n1FO+gRNgrr1BqIs/cZ0yt2
 AbuDKTOH9NUrj4lt3aHHBDmSSqisolhd78zKY7Orj+kfVsqnUCLmIgIoDzJZKaY8sFmORw1
 GD+vqSrCLTQI/TI7zmrFA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:5s4huV3RJBo=;OICxDqUjF2k88iQa5gX8SdiAyDS
 qRC7n84PIaDtXWjXrSSg+kfQzoErsFzUqMxawRnWh2TqjJ8H5kcxWJeyUfoPevq5/a4CtQM6r
 VanxPlNBgtWXVWFy7mUfDbRmmvIo/RfATHcHrtyT3TBDJOAI2DS6LlgLX3brje1cNXI3znBqg
 sMXtQ6QsiXPTOavMIEV+WF6h/beGntl3NonFsDRR5o5CJAyJ9PtJiSRuaQEQj+yCYv/fl7O2e
 Mn94qo3bsaxWeqMR/EuC4VfIWCs7ChYFQlddTS2UfeC+RNUL4Y9JMba7pmGUQo3CuSf2umkSS
 iZTLim41zX+JPSrC07W3ROVoH0dTTv869mGuBxXyRpAZoUD8kKlUEk4riqS7duRgmp1xyJrZe
 A9Yi5vwZuQn6P7rxxZO0ANrcvxWD9eLnnv/0R+oiQK2G7HG5T5LPnQy2knaT0d6+5fz6MQIde
 RN7g00SQeMRKFYGO6OYmXsyp8DZECaTAUVTJOZw+PBKGbC8KzCZMBbaq5mg6/YWpZPck0kLRy
 okY3fmL+oe7CimjjaI26LzIff7g4gdisH62Uq8AkvPfpXbocgn7M9PnZ65vWGhubcPUW91mKp
 DVpzoTC8AipRZ5i+7mQ0EvDhGhNm8Y8UGPMRvFO4udEWKqIaUIDtBc6jwjjqKJMGYoNa5FGN1
 8ZB9zKe8AqIjF8nWqSB2ejSptu9/eD6q2wW4sruW5LfmxTPT9vlPuX8qBoXrxEPvftZCs2fdg
 eGYnyOlX0PUVNlV2hHfKqtMIukHFSJd9syamKE4Pn0al3WKlTVv2VdBrWY6qS23Ao3jcwj88i
 mID5jQxQf2euYT7g5glgBVjbn5IYbl/jds4R7O21PupjSOSdZlaFnacsEnDyTJv6PH0ESO3BI
 4e7HKq29UXY2xXdUb0jpYIZqSS9b96RgLEFdzsrrMQOvlRep5loyez9Z/cATJkmCWVAbLRRoY
 H/MLMs2DNrOUO/KlZOLDbIjRYDMK7L2V6qtyZIv1tFqqpRXTlY0HF7B5W79jVyW/fXa0cd9rF
 Yqk9oO90LI9SH0usmFwDYyn3CPnwM/xjLNZovMsHpU87gobTzQJd04vRzXLpGHIJEvD0VsL49
 lhdoWiF6GFyQ5xGx+sc+IyhK3+7J+U
X-Mimecast-MFC-PROC-ID: QTu5FDR6h3uyuFc-7Lb72q3UY7VAUEx586jtDHpZpss_1736533003
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 9QDlfmVPm0E3qhispj4-IQwhM3yR1_6EdGgcBiJwCNI_1736533007
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

I second use of something other than Google, but I would go with
searx.org or similar instead of DuckDuckGo, which is pretty much just
Microsoft under the hood ... I mean it even serves Microsoft
advertising, although maybe the light version doesn't do this. Searx-ng
is better in any case, as you can even host it yourself. That said, this
raises the question of how searx-ng gets around Googles requirements,
since it can access results from Google along with many other search
engines.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

