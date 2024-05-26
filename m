Return-Path: <blinux-list+bncBCW5NIVR6ABBB4HMZOZAMGQEUHVNU6I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9E48CF2DE
	for <lists+blinux-list@lfdr.de>; Sun, 26 May 2024 10:44:34 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-43fc7d851f5sf4341391cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 26 May 2024 01:44:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716713073; cv=pass;
        d=google.com; s=arc-20160816;
        b=GY6QnTJE+FbRQdmUzP15yuYEHo6kecoClXP6AhT18vCDgBqIf6EM+JwdlsevyhoT53
         jvhHG4uI5bpshcHz7hnimzsaGxnUOyk7bq/FzPU9mE61YfGOJNMMOQKoy0UC4NZqrbCt
         /FwPOmga9ulmnUzFuRbWOSRaYHY0t91XdBnzlZutTVGZ7gFXlzn65f3N4EWX+D4DFNVq
         7CA2mFZp8kdhaeO3Y/3m2hxwWSAW4K3kr5BVZfziloNMAvQlgwMd83vlUbwyyPJ0QEHB
         SCA9IS2ECxSngP7zKyZwcg2BfJGerY7FWftW9FOPGL+mj0mPsbaeBsp0YJFo0fdiVxcI
         RU9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=qfsh+mTPSDaAyoOL1tpVeq6VJw/Be8SA/fDtE6HaexM=;
        fh=bwKMrd1n6paa4jzpIKuzXsQnWA4ctXJJnMs+jBAjWo8=;
        b=0iZ+aJ0PtKTy7Qk5+vFXUWIBV8xgSE+eteItlSwYVTyZSXwiQ9u5wno7Oszv2xf6sp
         JWc7ZkcAVIIqoW90uMM/98u3NpKMSWD3lSQnEMl1CPSzoxfgWjBpPF34nrQWTgNFhlMQ
         m7vBl/IV5QdZXJAXxnH+ouBhjfcQ45D0+T4En+jhYuFp4EdBN7xqk+V9P0IXe0RutWg/
         zyKdn/EUCrAF5P4lk79/eoDUe6jsDfX3w5mER8uDfMcD/D7Y/+dDO8qaRfJhLUmmRJ5N
         69caVNwhptkLVD8+u0lvWkXmwlLhfe1CfPOMj7J4tW33nhmPoxEKsScIpGY8cCdKHdlO
         hvqA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.208.44 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716713073; x=1717317873;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qfsh+mTPSDaAyoOL1tpVeq6VJw/Be8SA/fDtE6HaexM=;
        b=C2L7nce3NrxZmBKqWojKJirlYV8SwIQ4G2RHGIka1za4OSleRN+5osKXm8QA2qEPOQ
         FIIDg/dy4rORfeHWLqkWXw4pUluLPZsicU1luP0M6KAhueyevlv08LTPN8eC3M25zd1V
         nmj5khZoUdh1rNFDRbaWxdNSegxHpPBN0jIKFuu9bdQKHKcHd1sMoqgvXhHOWs0QxB0k
         Min926COkUSMOjPZnvP+Pmj5U9zK/0Zq0+K7UkiRdIsXVGVJJi+xbTCYIUuTU5YXzdum
         heh/pjsTNLn0AVisE5DPcIxilz+7SwGEN7cane7Z4fENz+Tg6ivhIR0Pksvl1vuFV0gL
         KkuQ==
X-Forwarded-Encrypted: i=2; AJvYcCU5eJaBQuKfqx0WIR7ToDvdvFLTblwe+ntZCCbB9CLx8YmlnyIEbJxu8ipu+L9DLUuhIa+TDacjk3a2fCrH4nQ51gerN4zXCH9b
X-Gm-Message-State: AOJu0YxZW/WlCnNYHxsUPfLYGWRSJNU2ShDCN6K7QeDwvTFZi/HhmMFS
	8Tg0RT+9NZ3GZw74zd1fZDZweg848XK6Y1ih7dsphIiZvWMHnh2FIEk45+9+w3s=
X-Google-Smtp-Source: AGHT+IFAVxUMAJ0agwZgn2vPmbCUjUAqRaoyJklTf3lhm2Ba3dX/lEkT9V4zK3jE+CJrODxnN5JsEw==
X-Received: by 2002:a05:622a:1889:b0:43d:f989:edad with SMTP id d75a77b69052e-43fb0ef0bafmr77274381cf.47.1716713072936;
        Sun, 26 May 2024 01:44:32 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1908:b0:43a:b9c9:a20b with SMTP id
 d75a77b69052e-43fb24a2288ls23175821cf.2.-pod-prod-02-us; Sun, 26 May 2024
 01:44:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWCvXUyfjhiCu2LkBXkROTBAUX8mSsrS8o9IIE1PwfPbbiVbHvhCRGYljbGJIMPLNdwryB0BWtBzXXehA7aH215qcBZL5Tb4PvmX+NT
X-Received: by 2002:a05:620a:394d:b0:794:a993:711e with SMTP id af79cd13be357-794ab060b3cmr919600785a.16.1716713072321;
        Sun, 26 May 2024 01:44:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716713072; cv=none;
        d=google.com; s=arc-20160816;
        b=HJEl+BJszsbxRN8D6jGbv3etRuNlWNGrsWhhPI56r3OfW+kLRit3BKXQYEieR45xUB
         FYYWXXoo65R22WfI3tz01NA+4d2d+ie/QzbhNEDjEM5fToy3+H0UqpiPZY2oCFIxVS2l
         FuHm+hk/5+qWGhdgxGfpc+isAFJ75a0kzMuwJzIl8WlJORYKGPmsnkbN0UjuIBBfvVjG
         tx2UgjhpW5wOHqYoNAukaVbVXzsIWHeFhQdCpRBvUCaegBatOLKK0PU5JH2Ern/LOu5S
         EeLsSR1+ztBR/Mk06CK5GSKo82nQJKFOlV/NIw7fi7ntxRGg8JZRivXIPESRhc0WYACt
         rdgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=zB30VUt2Opp9vLCTREEQJ9aKa7Zo4OGbUsxnzNZ//48=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=XtEELNsPtpHS/4ZF+udFfyUT2RTdSumnquSwaq/3SAHmV/+pQD52n44VJwuEApHBMT
         psoIEmVUzEHhaIY669aD8RK8Sq6N9WhLJYXGjbpK+1Vb+KtPpr5p5+PiSrcTMCdhe2e2
         DPWbBeZdPCfPkuNxx0+V7es5GhqZX64+089R1StQrwWTF2P2b5DJy8Mz7IK6WvIVQHU7
         Snf/WfyH+wzfEPY6icdb6E0ijPmWHovEsKrBw/xDU5Xt1oN7ZHCIcNL6k51Dq3xsS+jH
         N/uFq6fQvpT5sAB21bF8YTU13hEY8X5lRdqu3gErhY4gx8Oj0hJOrtey/R+dhQt6Dxid
         3atw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.208.44 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-794abd51067si536286785a.655.2024.05.26.01.44.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 May 2024 01:44:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.208.44 as permitted sender) client-ip=209.85.208.44;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-595-B63s-jECN4WAZLGSzDDXIQ-1; Sun,
 26 May 2024 04:44:30 -0400
X-MC-Unique: B63s-jECN4WAZLGSzDDXIQ-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 156671955F2F
	for <blinux-list@gapps.redhat.com>; Sun, 26 May 2024 08:44:30 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 04F391943288; Sun, 26 May 2024 08:44:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0242E1943280
	for <blinux-list@redhat.com>; Sun, 26 May 2024 08:44:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5D3C919560A2
	for <blinux-list@redhat.com>; Sun, 26 May 2024 08:44:29 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-446-I9jSRi3kMrWw83QmiRmT5Q-1; Sun, 26 May 2024 04:44:26 -0400
X-MC-Unique: I9jSRi3kMrWw83QmiRmT5Q-1
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5785199e0d6so2925728a12.2
        for <blinux-list@redhat.com>; Sun, 26 May 2024 01:44:26 -0700 (PDT)
X-Received: by 2002:a50:aad9:0:b0:579:cee1:9139 with SMTP id 4fb4d7f45d1cf-579cee19250mr1179615a12.28.1716713064984;
        Sun, 26 May 2024 01:44:24 -0700 (PDT)
Received: from [192.168.1.16] ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-579ce507649sm539870a12.14.2024.05.26.01.44.23
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 May 2024 01:44:24 -0700 (PDT)
Message-ID: <ec750a02-e9da-4db4-b95a-2172fe0d07f3@gmail.com>
Date: Sun, 26 May 2024 10:44:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: RHVoice in Fedora 40
To: blinux-list@redhat.com
References: <0dccc84a-2eff-434d-b089-d1eaca076655@seznam.cz>
 <c4128c0d1fd8cb70e053c26948b8c86257ab0534.camel@gmx.it>
 <1efa8534ecbee9707fadc617c397697d5f23c006.camel@gmx.it>
 <0f0bd2cef7fc0a3b7d85db839efba6468be5b845.camel@gmx.it>
From: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
In-Reply-To: <0f0bd2cef7fc0a3b7d85db839efba6468be5b845.camel@gmx.it>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: cs
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.208.44 as permitted
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

to fix this, create file /etc/ld.so.conf.d/RHVoice.conf and put this 
content in to id:

/usr/local/lib

After that, run this command:

sudo ldconfig

Pavel


Dne 26.05.2024 v 0:11 'Kyle' via blinux-list@redhat.com napsal(a):
> I have trouble building RHVoice here on Fedora 40. Well, no problems building or
> installing it, but the problem comes when I try to run the echo test.
>
> echo hello|RHVoice-test
> RHVoice-test: error while loading shared library: libRHVoice_core.so.10: cannot
> open shared object file: no such file or directory
>
> I built and installed it with no errors, but it just refuses to run and
> generates that error with exit code 127, as if the files do not exist. The build
> instructions are very straightforward, just
> git clone --recursive https://github.com/RHVoice/RHVoice.git
> cd RHVoice
> scons
> sudo scons install
> but the above error is the result. So obviously something is going wrong at some
> point that I cannot see due to trying to avoid the terminal spew. I will have to
> work more with this in a few days.
> ~Kyle
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

