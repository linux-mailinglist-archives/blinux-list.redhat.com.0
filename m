Return-Path: <blinux-list+bncBCHY5TMQ6YERBN6QYO5AMGQETAED4GQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7F49E4979
	for <lists+blinux-list@lfdr.de>; Thu,  5 Dec 2024 00:39:38 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d881cf6707sf4083796d6.1
        for <lists+blinux-list@lfdr.de>; Wed, 04 Dec 2024 15:39:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733355577; cv=pass;
        d=google.com; s=arc-20240605;
        b=eDhhk3a1HQLLJ9humbfouPqyBKbGuz1/Xmx6ZMHtG5fWkMRMkKa3mda+ln0NFHoxqz
         5qVFwNEOZqg93nklmHSNXnSDpIRLZ4AO8w2w7CrQVJBTZE4hzJcii57uPBAhqDnSjQde
         Ntxh9VVjyeC5YMT6uOP6py0cZFuwjcVby3ghVNl+eEwsduoBnH/5Aoe9HyDvt4skQ2Ef
         HkRXzptdaGJRUIbTSq+5OLYVjV0Wi4NOXjy0gR0TcKSFmid8PxU0VW6d8KBe4PiZJIKz
         4auPV/8NTimhL5P1d3+n+Jig0wxFu1eDuvdiU2zq4ErbgqkKFiFqLGkb7jlBzf36ncFZ
         7bcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:autocrypt:subject
         :from:to:user-agent:mime-version:date:message-id:delivered-to;
        bh=k/3/9Ha1LLs+81eLinmWb8oTnb3cJvqc6nLQoEB/PJ0=;
        fh=Wv0CzLRiYH/DJ0mP/S7fBbdDCKWQX/K+CiYOXpc03w0=;
        b=RpYyrDTn/dLUFsy4Rouy0vWxEiAFO3PV8CF4V3yuyJ48RXQ5mI46ipIujfZKnWd+4m
         vB6nxTa4WYpcbBGK43q86FkiO6okfjsJdIFZe49dS3WG9GB6p3yCPCWPg7Q47WfrI36G
         rRIFJrfrV2hP7J35V1eisCmdR/66kK/nEym3ziiXUcp/iicN3XrFhnMkpcOB9EvryLU7
         Z+zGekVqVnc8k8remg/AxoPub/gI4f4Kj8PJQDbyxsQS5rjA9m4/wy19xzYyY+lubuc2
         U+ik5D71qCO6+zJk3eExXfCaYisNDY5Mr9yqEzStX5OUIRpEcBDq2U/awdMWpYMGkseJ
         zl/g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733355577; x=1733960377;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:autocrypt:subject:from:to:user-agent:mime-version
         :date:message-id:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=k/3/9Ha1LLs+81eLinmWb8oTnb3cJvqc6nLQoEB/PJ0=;
        b=NAXIzwZJffDN6QAz2ivN7vv5+UkpJu6qomrcuQ1s1DCVedJHEIp+JLMOgZ3niRVqet
         Y5XIPfMZjP+HOAuMFdPX6GbGNUqgSmK9RxLPH2DjsefJB16fwSSuWgzWdc73wiISUkhu
         frH1MUce4w5pmljBuuMBTY/9WIlYDfpaRwSKqWHOmUArBnhzWbaKhWIgFSwi8M36FQ1m
         iu3bEyrJ7bzyLFo/5DWHBNXXYGrPyJqIQAyA8NsntFCyhxYL5xeZzVNAfMok8hgylZ2i
         ei4K9MhBsD8WNJdSyVzFYXfrBl1CLNeXuHiWyQBZhTzL23BYq1j/V+0L0WHov82xAs39
         +gAw==
X-Forwarded-Encrypted: i=2; AJvYcCVR0hHikpG/ViRN061fCDv7KV5pVd78gp01vLoreMy98WkCfGy8SZeMh9gnhUpPKP07oEnCXQ==@lfdr.de
X-Gm-Message-State: AOJu0YzC7k1JrNZqZou3//QzIy/6TmwxK0GJzbsq8Rpcg8RYZpmD+k0y
	x1lqxYevpAeAqMkgaY8FQ3EvplvHvUp2zhzPiVLXYCmn2m6pf6zkVXLr3P9pjTg=
X-Google-Smtp-Source: AGHT+IHOZcGf3MoButVPTvpeUe4Qj5CScfq0v6vp6OSswqsIAwXfBmV+adjEkPRS4ni+WClnM+w7mg==
X-Received: by 2002:a05:6214:2507:b0:6d4:2646:108a with SMTP id 6a1803df08f44-6d8b7301cefmr138003236d6.12.1733355577069;
        Wed, 04 Dec 2024 15:39:37 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5c6c:0:b0:6b7:96a6:c5e7 with SMTP id 6a1803df08f44-6d8d6a94ce4ls4943176d6.0.-pod-prod-08-us;
 Wed, 04 Dec 2024 15:39:34 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWkdQrpQPIi6mopeEmTW66S9dhoMTy3W0AlWF7HV8mD9K++4JYvUclWybrBPqNPKemd8Qaa3rVAbv4XKw==@gapps.redhat.com
X-Received: by 2002:a05:6214:194a:b0:6d8:963e:b4d1 with SMTP id 6a1803df08f44-6d8b7326315mr124308676d6.18.1733355574687;
        Wed, 04 Dec 2024 15:39:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733355574; cv=none;
        d=google.com; s=arc-20240605;
        b=J/zF4uH4hqEEfWpzpooeQbS30MmLahzJci/pWlvLwY1kZFmnNbWNwnzbKZuntTpujv
         mJUtVEQAd1FXv8PZNtOe3rUnI5eG04GK5IMivV4xARBPB0T0DQEJ6dq3jbqa8UL1jdpZ
         q6z8PuQe8NA9GijY7iJVwpCnAmZ6gAcPjrnk73zj0icYbDbORcLUBt41VbxNWZ9zmOtN
         jF98f+FJeQOCfLSDTeMsP6nAS8MxlpK1+EtQSoM28Dg5e+Js4GZbrT2GUImRV3z91hkX
         GqWRpBNJ9fvUoutTuvNhFJNc2jyqaAYadDFdRxYf3RO9EzC8/1qAzhyiKRIhmmQG1uKn
         zzEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:autocrypt:subject:from
         :to:user-agent:mime-version:date:message-id:delivered-to;
        bh=ZoQMBTInNbEfCR4fM4lEDrq0WFPIiYMaOaH+ldXnDG0=;
        fh=NbaJD2uAKV4/FIqTd0wat3NgsLwCgLHQrdb54Oo5y/Q=;
        b=Ejg3+vp7oNYYScUt3jFXzq2+a95LYALYrRUyHB1XFDVhZDhpN0cTVnTPf9RFysmc3a
         uqHtR0XUzzSE/IsX8f8bENxM3G3Zh19oPPy3DlobpteaQdsucZc9WBJ/B+Afk5JooNr0
         eTDwa91kHfyiaclT8oypwBm/7ITy9rQr64VX3MHJTcI5c7J3zIVQOPEtk/MlsNWY5AkS
         LKC4plsR+M02c0YxrercEqZI20v5Y22hrHy8bHeGFcle1aHzoLxg6OLnECF2SOLrviI4
         ShPDlXQUYZfVOuXLdccRGWuaP4t1jbH1YRdv4l8MbU/iOp8Y7T9lCjDI7USjt5jwIrNp
         D2LQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6d8dac0a18asi1428526d6.309.2024.12.04.15.39.33
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 15:39:33 -0800 (PST)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-633-jMhCSpwPOZuA6AlBhf1cog-1; Wed,
 04 Dec 2024 18:39:29 -0500
X-MC-Unique: jMhCSpwPOZuA6AlBhf1cog-1
X-Mimecast-MFC-AGG-ID: jMhCSpwPOZuA6AlBhf1cog
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 276F71955DC2
	for <blinux-list@gapps.redhat.com>; Wed,  4 Dec 2024 23:39:29 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 234FD300019E; Wed,  4 Dec 2024 23:39:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2116A3000197
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 23:39:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 45BAC195605A
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 23:39:28 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-368-P9-0rER0P7m1UeQhhh9Btw-1; Wed, 04 Dec 2024 18:39:20 -0500
X-MC-Unique: P9-0rER0P7m1UeQhhh9Btw-1
X-Mimecast-MFC-AGG-ID: P9-0rER0P7m1UeQhhh9Btw
Received: from [192.168.1.20] (178-75-165-74.bb.dnainternet.fi [178.75.165.74])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id CCFCD41E63;
	Thu,  5 Dec 2024 01:39:09 +0200 (EET)
Message-ID: <4c925cbf-a9d7-4034-9d71-db8f7b54f691@harrastenurkka.fi>
Date: Thu, 5 Dec 2024 01:37:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com, orca@freelists.org
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
Subject: xsmo developers are interested in improving accessibility
Autocrypt: addr=elias.stahlberg@harrastenurkka.fi; keydata=
 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
X-Mimecast-MFC-PROC-ID: lDNDH4nyVeXamOnUJ4XN2ru-ZSTID0gA839vo0qVohE_1733355552
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 1JJ2I2cq9p1icsfbC31psfYW7DmvtPgOEPy3iAreUgM_1733355569
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

We had a discussion at matrix and they were very positive about the 
accessibility improvements to sxmo menus, the current bemnu and dmenu 
don't work with orca or via espeacup, they have a new menu system called 
wofi, apparently it could even work

Link to the matrix channel

https://matrix.to/#/#_oftc_#sxmo:matrix.org

link to wofi launcher

https://hg.sr.ht/~scoopta/wofi

I apologize if I'm messing up the orca list discussion with an offtopic 
comment, but I think this is an important step forward.

Elias

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

