Return-Path: <blinux-list+bncBDYIZZNASAHRBIFWT62QMGQES3B4R3I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6CC93FD23
	for <lists+blinux-list@lfdr.de>; Mon, 29 Jul 2024 20:10:43 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-44ffede4c8asf46396691cf.3
        for <lists+blinux-list@lfdr.de>; Mon, 29 Jul 2024 11:10:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722276641; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dyj7bARiCSrOSFHLKk7M/jsNeaFzjPBUNixef0iSA0hQtBL54rL8zEoMfIZA1QjED6
         btN6AsuGB4963SnNhJ3sfvB9siQXBsNL7X7YjWmYK1EO6Tz/CBqzpbeuoG8UH9pd4z35
         Bz35Ny1dYOHQj6VmsXA3/doEfUyHMWD6pn5/7BMamLTjaYE3zA2nXj7r8K1gNMB3yEz3
         68WnrqY6Q61KmHLh3wTtX3UGiTkzaNylHEWq+CGxJ/C/hq6zarR0fdpZ9VcGCXNp/rBc
         SGSrzCatUpC9lfoY2cYzEKfSMIwxmnudJiZ7uQKb30pBPogLMZolO4vyyNt8Pl/iurrs
         rwow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=PGK7wxE0Qs6ZlBZ7R4Qt8kHTedIcUa3TEivZIycSNzM=;
        fh=5d73oZO/Zq0+QnnOwX1CQQln7MZ6EJcTYI79stuGCsQ=;
        b=aXNSyVtk4UZh8A66aK6nAd+dlNggceJbu4hGyBU11H76bARPDAip+3cJw7+iYbeaRz
         E2S6OAIcQDvoZH4x3DmdwGjbs8fP4Gbd7GHwfmkSyf10XUe+a5IM56avI/tq0g15wv+Q
         dOt7dE8YzgKzjKjfhrwQxtikGOGwDhOCUDxdmHR6MewfiZRhlJLgjSnIz2ssZ/avPBqI
         3wBtCr/hGwOD8y4oY0kSa+GsaWP/9GpwihJ3d0QgWW0p2bZhJZYvLUCeSyjIwyaOE2nX
         tnMAeiURgZv7dz6wUFkCTeePh/B3kXMbKbi0LE7ZQOL1EcGKeHDuqRYPnKP8et2lSZKM
         nNqA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.44 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722276641; x=1722881441;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PGK7wxE0Qs6ZlBZ7R4Qt8kHTedIcUa3TEivZIycSNzM=;
        b=aOV1CvTPM7Vano1lTNzC235hsXqsxqrpq6soQ35axMrjw+TET9V5kzf6QthEIfTETa
         4ZATMgp0zdI0abIGke2H0N2ulWyKgYh5MC2I7NXUASl88a2yDH41YJA8Au6iRECKn2do
         NZ1P9KSpYV8whqHin71Gu6qnsLtH6NLMFalBYSH38Jbg/XMkODoMD0IVgOCLH2LfxOS0
         8jpqnUOY9lc4xwQGBiQIj8w3FFO9Ho7b5K8FMcfmvkQXzT6uwUQ/wfkz007Ba0eKGNzm
         LCdLoyhST5f1+8cJfKjTEaX3pYqtEUQx3EnPaXz60CBFFUlrEyKcN6ZcMz6anBQVQEC/
         wlxA==
X-Forwarded-Encrypted: i=2; AJvYcCVv31BK35gQWbD4t3+pHgD3R6z5leYl8ViMk+2WvAv14D53j0lLVmBLxtzMrcnEho2/BiRStuN0JC7Zrr+o0FVh1JrNNZG8jb4F
X-Gm-Message-State: AOJu0YwXEyWwf3DfOcMuZ0gI2zaeQV6JQJ0u4H5f0bERcj9frxlZ/EzE
	Kk1rtHq3WnZcObyQY8lpY/xQejLT23rot4lTXwMe0xvcwueo/sgK8+kzg+MH3ts=
X-Google-Smtp-Source: AGHT+IGnIFEHnwNJU7/yRawClHW/HXCsKCw2VXeK+nHPddSJSb8OmxoKFRxbqouN3q7d1Oztn/d+Sg==
X-Received: by 2002:ac8:5d0e:0:b0:446:66bf:40d9 with SMTP id d75a77b69052e-45004da51c1mr115419621cf.29.1722276641052;
        Mon, 29 Jul 2024 11:10:41 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1196:b0:447:f206:4e93 with SMTP id
 d75a77b69052e-44fe325e5d8ls72201081cf.2.-pod-prod-03-us; Mon, 29 Jul 2024
 11:10:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVmrQ9+1AhcYTeHNqdBAt2TwMKz1YDc3uswTXj2HMCARHSYbrD6hkvexU79TuNLk1tsnRBFb7UhgJAGp3U2GEc13L0Ie+NeVUfIsFJh
X-Received: by 2002:ac8:7d10:0:b0:44f:f7c8:b149 with SMTP id d75a77b69052e-45004f2ddfdmr111780881cf.45.1722276640098;
        Mon, 29 Jul 2024 11:10:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722276640; cv=none;
        d=google.com; s=arc-20160816;
        b=z5iwYGRCFgS5j+k0n9n87mhZYprdS7xqEZI6t5swQXiTHyrAXnJj7t93P0/8/Y8LlN
         KsNfe0NhKVNUlcz6WOpZYrAHdJCfqOKSUllor+wluwOAwlsKjUdleB2JI1qbsp1DVzLq
         rho5H8L0bzt1hQlOzMEPOu6m6wQU8VDN1ygr+b/+Y5xnVkQEvYSLw8GAnvXi7Dh7XEO9
         YEQeE5bQcZzDTUbdW4nsdA0+0NSSKBEdKmbGhd5wzI9YWBxoUNiytYXDv8FtMH4xdqZ/
         iqIoNTQbxRD9KqFekI9UXOxjyY9VthJX+GV0NCRApP/k1bwXaCgZ5cyEXAin9zGMlVoj
         MKdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=vewQ0TF0c1322ry+vC0cXxJlwswdstR5yWpwdOOEkHg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=X6+hTCjBjvX35rcUn2Yjemq2gEGpcZmWBicBY9rhe8rQ/2/v3iQcXiYrrFFrkYCRxl
         QXNRuM6VIF1JWKujb3yFyJ+Ny/+Bto4a63ip4XbClbk82L9FKrNRh4jmKk0Sdidh6Mzn
         OO8JWiZ0duq+PcV9KvkN80VVPVkkNwjK5bkiuRPePlC8KUo1CUrg/MVJXmeotxb1uROd
         0GmqBgZbipOOu2j+CKNOzbvEtfCfO3fJKn8KZlL4WX15jv9249VS9rSiptKKf9mbVeQb
         SiUCBwTPdrCR/e+b2N96YhjagMqqu6xmyPvrplFgLEbuuK30SYXnsche1N/QZwXt8+MZ
         KChA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.44 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-44fe81fa95fsi105096161cf.304.2024.07.29.11.10.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 11:10:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.44 as permitted sender) client-ip=209.85.160.44;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-414-SGMpNRFHOBuzDXCABzZNzA-1; Mon,
 29 Jul 2024 14:10:38 -0400
X-MC-Unique: SGMpNRFHOBuzDXCABzZNzA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BCE931955F43
	for <blinux-list@gapps.redhat.com>; Mon, 29 Jul 2024 18:10:37 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id ADBCC1955D42; Mon, 29 Jul 2024 18:10:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AB296195605F
	for <blinux-list@redhat.com>; Mon, 29 Jul 2024 18:10:37 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4B35C19560AB
	for <blinux-list@redhat.com>; Mon, 29 Jul 2024 18:10:37 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com
 [209.85.160.44]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-79-klgvFcLvOZyBmEvvI54DBQ-1; Mon, 29 Jul 2024 14:10:34 -0400
X-MC-Unique: klgvFcLvOZyBmEvvI54DBQ-1
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-25e397c51b2so2447272fac.3
        for <blinux-list@redhat.com>; Mon, 29 Jul 2024 11:10:34 -0700 (PDT)
X-Received: by 2002:a05:6870:f78a:b0:261:1fdc:494a with SMTP id 586e51a60fabf-267d4dcab00mr8989937fac.21.1722276633027;
        Mon, 29 Jul 2024 11:10:33 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-265771e4604sm1917634fac.46.2024.07.29.11.10.32
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jul 2024 11:10:32 -0700 (PDT)
Message-ID: <ea9bb82f-00a8-4b4f-9aaf-1b53c8a577f5@gmail.com>
Date: Mon, 29 Jul 2024 13:10:31 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: WiFi on trisquel 11
To: blinux-list@redhat.com
References: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com>
 <7efeda7f-aad6-46fe-b848-9bc1be473feb@gmail.com>
 <c20c8201-159a-6ca5-61e6-b2c349b18a66@panix.com>
 <2dfdde94-9d53-4fb1-b29a-308b0872dc8b@gmail.com>
 <37b6459d-957d-32b3-57cd-e08cc9101eaf@panix.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <37b6459d-957d-32b3-57cd-e08cc9101eaf@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.160.44 as permitted
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

Jude,

thank you

Rodney

On 7/29/2024 13:09, Jude DaShiell wrote:
> No, I don't use usb adapters for the internet.  You might try temu, price=
s
> on that site may be less than amazon which may give you room to experimen=
t
> with different adapters.
>
>
> --
>   Jude <jdashiel at panix dot com>
>   "There are four boxes to be used in defense of liberty:
>   soap, ballot, jury, and ammo.
>   Please use in that order."
>   Ed Howdershelt 1940.
>
> On Mon, 29 Jul 2024, rodney jackson wrote:
>
>> Jude,
>>
>> If=C2=A0 Trisquel does not have it, do you know of a good and dependable=
 usb
>> adapter.
>>
>> i found a cheap one on amazon but on both my trisquel systems it does no=
t
>> always work. sometimes when i boot up trisquel sometimes does not see th=
e
>> adapter and sometimes it does.
>>
>> Rodney
>>
>>
>> On 7/29/2024 12:56, Jude DaShiell wrote:
>>> You may need to install the driver for that wi-fi card if it's availabl=
e
>>> on trisquel11.  To research this, lshw or hwdata packages may tell you
>>> which driver is needed.
>>> The driver that is needed may not be available on trisquel11.
>>>
>>>
>>> --
>>>    Jude <jdashiel at panix dot com>
>>>    "There are four boxes to be used in defense of liberty:
>>>    soap, ballot, jury, and ammo.
>>>    Please use in that order."
>>>    Ed Howdershelt 1940.
>>>
>>> On Mon, 29 Jul 2024, rodney jackson wrote:
>>>
>>>> i have installed Trisquel 11 on a laptop and it works pretty well, my
>>>> problem
>>>> is it is not finding the built in wifi card. when i have windows 10 on=
 this
>>>> machine the wifi card was working great. how do i get trisquel to find=
 this
>>>> wifi card. This is a Dell laptop. here is the info on this system: mod=
el
>>>> number: PP28L
>>>> reference number: 07147
>>>> dell LBL P/N: NM508 A01 APCC
>>>> service tag: GYWXLJ1
>>>>
>>>> XPS M1530
>>>>
>>>> i know i can use a USB adapter but was hoping to=C2=A0 get the interna=
l wifi to
>>>> work.
>>>>
>>>> if this is not an option what brand is the best for Linux?
>>>>
>>>> The ethernet works but i do not want to keep it plugged in all the tim=
e.
>>>>
>>>> any info would be appreciated
>>>>
>>>> Rodney

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

