Return-Path: <blinux-list+bncBC3NDNGRUAMRBE7ZS22QMGQEXZOORNQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A67993E383
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 05:35:49 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6b7980fc855sf27793106d6.2
        for <lists+blinux-list@lfdr.de>; Sat, 27 Jul 2024 20:35:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722137748; cv=pass;
        d=google.com; s=arc-20160816;
        b=NfdVotbC243h2WidEObv/IJP3mWMTbvEthP92rhX0onvH7C1wnbLSvf6CXatYhtv9Q
         Zq3v4MjC5/Fpa4qQyaKjsEEwXWp+QUYUXE7/yKOfV6ukev6RuG5Ps+ZPCw/DVR9X9YUz
         i0ZL5B1AeSLPPz6NY2Pj7kdzDoURxyhFPKNkFK4X8+xQeWNOj/JKKYdjBI6+yVvVV/nS
         YBM/qiwWYxc4fq8CR/NgWSODOQYa1cAplTLuCdjsN0F5u8ycBXbXt92cjAlTzTM8J9xS
         cohg3GezaxCa+3rfREZ7dh/3r4oF5LZnKq15hRVU8N1o/vv2EacP4QsNNGvsebKYTten
         xl0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=CNK+QaUVk+wdxuhchnGcEfKYhle1MR5UG8XERMJYRK4=;
        fh=Sh1zCyxQjOyGVjRV79BWAWnWbWevwRCkXGtM/5nkB/k=;
        b=1FwfnwpzqYgF44Xkgp5mHcPfiydRnS/GD5g/nD7h5FdTk03m7/UDynrdSbJtsRJiHU
         icINTnU4Cww8ainjEGAHl5TJo41Q4P4tNOxLjCV96XNOrNomhRVNZG/u7S8VCqJw2IDt
         bBd3YoPWMk13+Sx6bWuKWpEHtz37q6vgHor2qWTDs8H9GsSGXsuo9cJq5aNzym3Xcn6s
         arMpKIYEMHl4BQQ6JCpgkdKxAzntfuC2isZla6bfSgB1gfGNyMdJP6kKX0N8IbimWZ7k
         CWnIO9v/zNt8o5Q6NlwYj5O6/sCjm/5WsmAhtN1Z3p8MYZFUt66meroO93EIotinR5rh
         2GNQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.152 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722137748; x=1722742548;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CNK+QaUVk+wdxuhchnGcEfKYhle1MR5UG8XERMJYRK4=;
        b=Vxp5dS0NLsO5Opzau3DtmrYsIBOIYAGL0f6pqHbe0tx/mNy/YAjmEOUlv4+TNX2O3N
         9S46y3QHM0pJRjFr9eK+joY5iyosely/w/px4I37RDS3QS6mZ53HnTpG4Jn5qJG1tk+y
         Y2G9Oam2hyX3cJ69GCJB6jQ711BO4IWc4PYCJ4u1s/t8stLz95tBrMQILK9jxQmUL+/G
         grPTjTTsPPbfuI/Zg1s8qD1vF4OzWFmi7Mt+0sGy1lZ7S3uBLThqo0t9OeqgEN60lVEc
         1DCn9ewMMYut0B2gTnVh2RT2CE6tijmoQoXL0oDj6g/ex3gkxtgCqotg0ZYdIAAAqd/E
         PIlQ==
X-Forwarded-Encrypted: i=2; AJvYcCXXQ5QzcjV9hqJwSvNmbhTOL3E4TBWPzIwtMPArwwHW+s5j3X1NZeVHpmXoSxJUfWPEea2KjrS++pgs92yujNr7oBI+nFYEvWOb
X-Gm-Message-State: AOJu0YxO3qRSCjSlS7kJvJO52wpKs+GlRTJvxFBitNJ+oBNkqSaJiITm
	4EiOckImh1GLCw8rXb7JU/fpxSrLcR7ijzBKjNuiY2oIVuWmw1O/gmR4crC4JEM=
X-Google-Smtp-Source: AGHT+IH1eTfa58GuajjwfsS1UrrT+01lumfgJ6B53gtx4LA+4AxkuzUQKNqYBoqbRXHR5gcPfyoUvw==
X-Received: by 2002:a05:6214:2aa3:b0:6b0:7fcf:36b1 with SMTP id 6a1803df08f44-6bb55a837b9mr58969086d6.41.1722137748096;
        Sat, 27 Jul 2024 20:35:48 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2e09:b0:6b0:9433:af46 with SMTP id
 6a1803df08f44-6bb3c0820d5ls52634586d6.0.-pod-prod-03-us; Sat, 27 Jul 2024
 20:35:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXda+8J2IGUllmYX05tzFUgmAL+hv7fya280sU8IVg433jNPyF3SwBdyjqJQnqY6GwQXUHUz6Ngz2nPdqLW6QAJ+a3oi3fRzMd+RO79
X-Received: by 2002:a05:6214:daf:b0:6b7:9afa:238f with SMTP id 6a1803df08f44-6bb559c711dmr55717726d6.21.1722137747045;
        Sat, 27 Jul 2024 20:35:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722137747; cv=none;
        d=google.com; s=arc-20160816;
        b=E/FM4V8YyvY882JAgWSATXf68hH68Z+yPyf3JLJ888k6LA8UIAUvUkwLFojH8fWRuS
         FnZKTt1giugEBaRZBFO1x9lYqHjTk41OIW75vSk7j/NfgTmsIX0d0o8HJ9Wh191G2N3w
         Kjh3ZsNdUVZnMIY5fcU80aAMX7duJP/JrdD8jwWr4OxdZidTrqapPAlfohvRI0b13GE9
         59walY5GTy0UD14RvIR311V/lpcaQc71UgQDHHqoX2sJcoEMcaa+02LXbHFr3NjYcKen
         N/VS5PY5f/aPSvCrlBzND+LR0h1kTAsTbCrLlrKXd4oW0ZE4IuhOG12YiEiZF+GobubG
         F9Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=SnJ3Zgzl/yYWnDmaFREGqv9Cl4d+sls8VNYwoStxzyw=;
        fh=UNuH3XV1C2a79U0UsteDgp+soVgTZkLER00ynGjcnIU=;
        b=myx1xEdnMqLvckC5WSnj6L0tksE0YMRAUjzJvhE8PEiKqTilo+iDWTr9/jZd5JPqk8
         2HbkB5jqzS2FbMD+ZMZGIoO6CIc1nO4zHV1hUYskJiw9lK03cr/LrR+NIF8kT4mcnleF
         E9oFi+0dcLNDM5q+S+PdWkIqRlxRuTmdAD8QQzEbW928n297g+Rgd/L9S1JzZD+PMtqw
         WwMGFEtxlmHof6DV2j0Qqd6ZJb6nGEza4DMioBHWNwqfS60vHAjy5PY3Xn4WHofxXThn
         K4Xd7q0NeEe9iZEMRvQM3z/MVxQdQCddHQq4S5BgaLoq72qXdW5N7RBA1h24QVo0kmKT
         NOBg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.152 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bb3fb22211si77364976d6.592.2024.07.27.20.35.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 20:35:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.152 as permitted sender) client-ip=103.168.172.152;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-121-PY0xvDsiM56APkxYrGMNcA-1; Sat,
 27 Jul 2024 23:35:05 -0400
X-MC-Unique: PY0xvDsiM56APkxYrGMNcA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6C80A1955F40
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 03:35:04 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5CE8E1955D45; Sun, 28 Jul 2024 03:35:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5AA3E195605F
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 03:35:04 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C1C921955D58
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 03:35:03 +0000 (UTC)
Received: from fhigh1-smtp.messagingengine.com
 (fhigh1-smtp.messagingengine.com [103.168.172.152]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-84-FC484ilWPeu6bPEDrDvG2g-1; Sat, 27 Jul 2024 23:35:01 -0400
X-MC-Unique: FC484ilWPeu6bPEDrDvG2g-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id CA1A111401A7;
	Sat, 27 Jul 2024 23:35:00 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Sat, 27 Jul 2024 23:35:00 -0400
X-ME-Sender: <xms:ZLylZmxcI4gEs8YQzGvCncWsQVu_evUHfsrulDgwhITKKQwBMHJ62A>
    <xme:ZLylZiR-nd-xGcgbseg9dO0cdNR4qfjGdW3sxu9S8ruSCMRECbR97a88uKj_bsDmR
    Uwc9VFjWj000uXDbAc>
X-ME-Received: <xmr:ZLylZoVl8y2JzPq7xGMrfYyidU8CzYGmp5EIMNi3yGLEGrI1qXwiz4Vjf0mu02ysqUxDkBMb1ZgcLf6Wxr2zxSYBbjV2yzqhDn8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrieekgdejfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghp
    thhtoheptd
X-ME-Proxy: <xmx:ZLylZsgjV2_ir9N1UcOO4OdWn5zcgKo_yOxLGgjUPxTm1yAMEacQHw>
    <xmx:ZLylZoCw41rh7BIMh4xTK6gYJ94Ctr6r9L0l8MaMJv8LsXJZBkLTBw>
    <xmx:ZLylZtLCa3ot1eq7lEED3E-tJQ7AQYtvQQOUyk2q2hWUPbh-d5yVZA>
    <xmx:ZLylZvAwIBkdlWuEijvqpYUn4f1HVHAkdhTfSXyHgAh0zxMl0uQZuw>
    <xmx:ZLylZrNNROGB9annQljjfoR_q4tnayfy3MBVCtL4lbeEObbHW-EiXLMo>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 27 Jul 2024 23:35:00 -0400 (EDT)
Date: Sat, 27 Jul 2024 20:34:59 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Ryan Mann <rmann0581@gmail.com>
cc: blinux-list@redhat.com
Subject: Re: scan and read under Linux
In-Reply-To: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
Message-ID: <885dbb66-b62a-a265-2f46-9d20e0fab0d4@hubert-humphrey.com>
References: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.152 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Well Ryan, why not save as a plain text file-and-read in a console? Or you 
could send that pdf to robobraille to convert.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

