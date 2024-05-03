Return-Path: <blinux-list+bncBCHY5TMQ6YERBZ6D2OYQMGQEZJLFBVI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3E58BAD28
	for <lists+blinux-list@lfdr.de>; Fri,  3 May 2024 15:08:58 +0200 (CEST)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5ac8c74fa97sf11266350eaf.1
        for <lists+blinux-list@lfdr.de>; Fri, 03 May 2024 06:08:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714741737; cv=pass;
        d=google.com; s=arc-20160816;
        b=gkjTgSQ3LgM9LcfYb4mmJcf2usmGmL67zU9Tu09vQn/zI8PDc1LczQ2RPUW11iSHlP
         ll5s3BqdtapFwexY93O9RnPDDtfOlv84QUZnw26/KWotW9ljj0/gN45p5IfjxK4V3egV
         syjHEIFQRfkQRoMkNAIj072t7YQPaORxiWLlNXlgg0nu5inBtKblN65IJdPXRUQJMRE/
         SxxgpV275DP1gpLSacF8NOIo3e6Mpesm68/zT045y7GkVQPZyBU2nv1qllNq1qlV41/Z
         agXjsTf3GysFjzKM+Rsk4lcAOUpAsibJo6Hsd3U54zATXAtU2TiGh1Pv3DkJswC4ujBN
         ebxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=YTmbAlw9Pv/4KocAwlndVve4TVU1HGRCsLDxr9Ggwe4=;
        fh=waCC8tMI2PUWmNrNscY7nbIx0fIXsZ4qWGKCSu2ID5E=;
        b=qewN1vuVsjAH/tmGTGkpPGjj/Mk9LtkkWgpPQqZe0bVE+n3QrR3PwJh5o80ItfibTK
         jldOwD+UbBXoPDvXAnlA8fb48RI/n9+EeU/8tYKcUd++SEVSz4Gt4XOcMsHScTr4zea8
         CorREw42PduUxTn9QWR6/yhd0kdOWbktTSkGxlIv6rzUn/gTPFMd5rkELDLyX2kGjLIz
         gwTwKYHx0tcnhj0r4kKsA8ghm5siLOwdxF8VqTLUiqDmq0nN/JAEFVmu7dPQqQA/J/nn
         G6DTydvGOFn5yV0/MV6jIi1Dhlhx5Rst1AX+rYCBNp9ImAuF5MkUEDH3CS1LPkF22swJ
         NT0A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714741737; x=1715346537;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YTmbAlw9Pv/4KocAwlndVve4TVU1HGRCsLDxr9Ggwe4=;
        b=TMr17JOpMrYyR+/PE88aaiM1bKKguciPgxkH9Sby3cmy1afpcx9k+d4PGGOqbm9u9v
         IJexDUXMEz6pwkriheiCOWvx+is67KLXb+uEdAs1qKPu7KVkKuzY1GfaQGfGfKNHFnM3
         wQ7RsIn53JT+6s7ZBA5Fzi/PabeQQ0f22bxkJUrbNHPT9FUrBgsNHZ42WlfIt4SuA9kd
         bNwE9gFn2nhI4oJPlAdKpsvwf1UaeSSawrAB5i4UZCFGWpUhTfKkhDwZwohiCU3nNPAK
         6t7aGqV3E6r7x1LmDX9ktp+eVJnksb1yeVyrAGPpZxktUUpnk+YuCUl9NodCS4J8MiDx
         LP0Q==
X-Forwarded-Encrypted: i=2; AJvYcCUlrDHqde6B0lGEJivL1kh/vLII01xq6EaSburnxe3j4PP2hOBDg38+gZrvKNOta+yL0nA0WTOTRHkVT5GcFHEhBDUaAJLIudoa
X-Gm-Message-State: AOJu0YwhVFBfU6+X1XaMpErrlMZiHXhFtK/Q1fTwIl1zbSTymLZWJ7Gj
	lupadDGS2GeujQs93n6GjIO9JjfyGril2a0iXaU0xMXOg4BjKgoC8gzg65paWOs=
X-Google-Smtp-Source: AGHT+IGGLdnqHZSs03ywNQull/yXTvSxZxxlzvjVGXyiPRVnftSTjjxrahFwX1jDUTQrk69FIT8uiw==
X-Received: by 2002:a4a:dc4:0:b0:5ae:fe80:7dd3 with SMTP id 187-20020a4a0dc4000000b005aefe807dd3mr2517772oob.7.1714741736179;
        Fri, 03 May 2024 06:08:56 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:5891:0:b0:5af:7851:d17b with SMTP id 006d021491bc7-5b1bac48c24ls448517eaf.0.-pod-prod-01-us;
 Fri, 03 May 2024 06:08:55 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWc7I+IayHi56J6DXZBHvPjFwrL2wXh6KdSjIwV3G8k4J4tWM/+rziOedOceel3UrRrjC8hQIhsjl1IcRLetJl3e+pRfmX0shofpYSU
X-Received: by 2002:a05:6808:211c:b0:3c8:49e3:c0f1 with SMTP id r28-20020a056808211c00b003c849e3c0f1mr3510440oiw.5.1714741735186;
        Fri, 03 May 2024 06:08:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714741735; cv=none;
        d=google.com; s=arc-20160816;
        b=nD5z2t9LGbIuL+jC1vSYtfaXKghLq3Td9oe8cF3r1dNp1kKT2mlYJepR9FvNc8xwyd
         au+KAqptI01FEUCZilu6I0ggtaYHOaM3YfVbakq7cmITZh38WtWsCvXcvYN1WWPlcyXT
         wWNl3JGC+ICAsUsde1icOsRn4/ecsEPku2kY1XCXWYDtHELNZ42eDJ3Q4N2pWF1Q7Am2
         D4tdnCg7IMpZPMa0RM2y5eegRyJswFkNuSmNudmD39mz2TOkE0FkNszqho291F44rzBJ
         Wtq9pFlEUdcBw8YokZcg3fqTXyJAqvqLItAftdvVvpGQAMwHiwKIUpHxP/xY8MDgPR0C
         AxrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=rSxqULNe9tKDR8w5pETyBUqvM99mwNmDi2uSNhqgCTY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=GlLggiPPaMsGvN76h0v5Mse2XaziAngy3FAAqrDwPZ4MQ6BYDtegX+ujwe0HknNGPq
         T49h6GA4DJIvPIQvv3XFuM54tIL6yGjf/1KegKLhVWhh01i2kcMNLweG8aNtBL/Gal8w
         t59bczfKTIDf36/ZatFEOHDDK3Pfp5Eb3ILIw9QqIiIjXomRQUvrX2mMPsfSe87McAfA
         ZxIL8hvbHa/eoxbwZKpridprYCUlNpMc1AyybsqRw8lTux9jQ3IygCuV2FWGgx/PijRL
         FMz5S0FMg6PrmFejF2oWaGu+VkD210IpzWqIgI1kjueJoy2xEhyUyYS4clEoDkCBdrKN
         CrCA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id dd6-20020a056102568600b00476b88504c6si606982vsb.585.2024.05.03.06.08.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 06:08:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-629-HSyYgZViNiWnG5jLq3eX6Q-1; Fri, 03 May 2024 09:08:51 -0400
X-MC-Unique: HSyYgZViNiWnG5jLq3eX6Q-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB57C8001B2
	for <blinux-list@gapps.redhat.com>; Fri,  3 May 2024 13:08:50 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id E81C5400EAF; Fri,  3 May 2024 13:08:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B050340ED2F
	for <blinux-list@redhat.com>; Fri,  3 May 2024 13:08:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 613143806705
	for <blinux-list@redhat.com>; Fri,  3 May 2024 13:08:48 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-689-_ZeQ3KX_Nfu5MGpXfkmuZw-1; Fri, 03 May 2024 09:08:46 -0400
X-MC-Unique: _ZeQ3KX_Nfu5MGpXfkmuZw-1
Received: from [192.168.1.20] (178-75-190-98.bb.dnainternet.fi [178.75.190.98])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id 07FBF4167E
	for <blinux-list@redhat.com>; Fri,  3 May 2024 16:08:44 +0300 (EEST)
Message-ID: <11a8b732-c9a8-476f-94d8-34a1f8fe2bb7@harrastenurkka.fi>
Date: Fri, 3 May 2024 16:08:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: nvda2 speech and debian install error
To: blinux-list@redhat.com
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi>
 <20240503123117.6vhsfjpfuhjgwxno@begin>
 <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi>
 <20240503125138.ccmtstpyuyyyyf3e@begin>
 <4703c033-5eee-4d95-b6c2-c1e9a9ddf089@harrastenurkka.fi>
 <20240503130413.rxcx55qhjx64utco@begin>
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
In-Reply-To: <20240503130413.rxcx55qhjx64utco@begin>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: harrastenurkka.fi
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
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

yes, but e.g
this command does nothing, the server has to be started somehow, or is=20
it running all the time, I get the message command
not found

ws://localhost:3457

On 5/3/24 16:04, Samuel Thibault wrote:
> 'Elias St=C3=A5hlberg' via blinux-list@redhat.com, le ven. 03 mai 2024 15=
:57:53 +0300, a ecrit:
>> I have now installed the required packages, but where do I set the port =
and
>> address of the server, how can I start the server, the command nvda2spee=
chd
>> does nothing, command not found
> I can only point at the readme file.
>
> Samuel
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

