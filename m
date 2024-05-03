Return-Path: <blinux-list+bncBCHY5TMQ6YERB6562OYQMGQE7A7XJLQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f197.google.com (mail-yb1-f197.google.com [209.85.219.197])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA148BACE7
	for <lists+blinux-list@lfdr.de>; Fri,  3 May 2024 14:58:38 +0200 (CEST)
Received: by mail-yb1-f197.google.com with SMTP id 3f1490d57ef6-deb5129b71fsf26672276.1
        for <lists+blinux-list@lfdr.de>; Fri, 03 May 2024 05:58:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714741117; cv=pass;
        d=google.com; s=arc-20160816;
        b=Le/CNYHpd9YxtceYXzh6dX0FVw3TURTkueTN4ZR5hcWiHYbtfVgGs1Kww+pSDZ76yI
         Hbqfpux/cC5WgyFvBz39BfkAK93ZwhUvLR0kuJSQw9SD2GgZlKGIDRLtpuiGHQpDghPY
         7XastWwClK6oKli2/NJAHNsAEpKSZ6jKxWHR+wcIm2ABs89RxphjJ3ilwdlq2MzMDvVO
         nnqZy/+jjlrI408JmRV93eDLkJZ58KSjDNSNUK7A6Hfc7MIz9M9eqelFJh+9YkUsLVyN
         6GTTnC79IaM6bIDM9sqTLfQajE3w/QNr3Xo4WMebPxXPAlT643RdlP0tXg8f6No//MYl
         e6Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=KSmjQl+IJ4Ppjim7CcYnAcwEAEAt6ut4RcNPw0hx0fQ=;
        fh=dhtaUdyKVSY1eQkyAo/5FVe2He0+vnFmj0SgQ4gmFtk=;
        b=zI3RkSjwj9GoWWMLpSFntTux8lTBLmfiurAEi4SZ3UaWpCtyF90iostv7casfmKLOL
         kqdkntMZfPslWkhcMKD4lXhoHa2ApGHnC+SKOzAf2ssA0PdOHx55KGiP3AyuNmFjTc+d
         NqrPkKbTVpBUHsCEAfUIAfe7RhApAVr0PiG8TPzrlLvRVinzxH7WZeZ0pdCI89P7j3FI
         Hp+YnNeqnHapqfImR1mHJPkz549ArvMKZIQsScnoak73NkHGJbD9LjV65bOgiAP75OEi
         uc5RTUTJNUCq2g3zFao7n56C4RSXVfAi2fyJ/a95ye5r36rXk+OtFLypUwEwAclHOIw1
         PwSg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714741117; x=1715345917;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KSmjQl+IJ4Ppjim7CcYnAcwEAEAt6ut4RcNPw0hx0fQ=;
        b=X/7wkWjitV2KWVKVdN/LhFVw98wAq+OZScMZspvSdtNB06f9BSuhqEmFQ2CuIejhRx
         +bWKhF4EAyDB6oKvYvKNhLHWGW9+CvDrzPeILEmnwnb81K/dvkRdMnjDfTxEimnMvgRs
         AA5f4WcCRnmt99eQAECGyVkwsG1x5LUHVuP9L2fs2Hybn5mXL1/lvaQqLsjs+T+JbyiY
         P2shtkNW2RcfQ3RPyDc9ZDL8m4fF3USpBWoPP4ndLO9GWbuGy8P2Qyb3Cc6SksipuqMV
         mKaQW67lsQ0pIZT+LFjHwt5WE7ecnoMRjLm5mtwpSvtmOWj8dWxaf/bTu7YWEg11Ed6m
         wl7A==
X-Forwarded-Encrypted: i=2; AJvYcCW5uBu84IpuFrOfewkg4fxlPR+uUac7PstWumUbkZlHI8/B0hpWcXDjdJvjJWW9pfF3z/UD0g0JvS6HfVPN94x6hjeWOi6EXoLS
X-Gm-Message-State: AOJu0YxQvnhoOKNq6A3a0T0YYec3bnI2Iz6V8H3tv54h7Btj/xSqIAPC
	UsDWXNWHrL7ehBS8qiXZnQfkOEYHf2bLMtllq2ge5Y+z8phRnfyBoE16mfXOjBA=
X-Google-Smtp-Source: AGHT+IEd5/nndLMJg48r+grmlsBrxNmihhCmdJdQMQqle5j7Pif5E2MsU4EnDgDG8CZX9eCLKq1bvw==
X-Received: by 2002:a25:48c3:0:b0:dc7:491a:18c2 with SMTP id v186-20020a2548c3000000b00dc7491a18c2mr1873687yba.6.1714741116750;
        Fri, 03 May 2024 05:58:36 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:c583:0:b0:de5:a3ef:27b9 with SMTP id 3f1490d57ef6-de8b50529cels263443276.0.-pod-prod-01-us;
 Fri, 03 May 2024 05:58:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXXnAOof/yK/lt4dqPZOBl0iiekc3O4CPkWQBEiac/YnwaD77SdIZVuPNtheB5vPQckuMtkyZxSsccfl7aJbgBnoDckYmfoLGwVLoTh
X-Received: by 2002:a81:4917:0:b0:615:ecc:91c0 with SMTP id w23-20020a814917000000b006150ecc91c0mr2093110ywa.20.1714741114498;
        Fri, 03 May 2024 05:58:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714741114; cv=none;
        d=google.com; s=arc-20160816;
        b=EgeIj19pIkrEFLvPcxEXbk1AfXzlGkFoz+rVti4i6i2iC1/y1Ug3vjSg9w9QQoqUw1
         pVFBEV9mAQn8h+i1GDlK9RR233GDOJdRgFjRkEkT4Muhvw4ECEHioka7GVZv7t4Huyx8
         gaoZ14zliPgfKbdR27g+P9UXUG/wuLJBGOPZVGjxiZM075fqT9KnvZ7x0jrK65JdHHCw
         aQLQ53al+4Z0H7rT0l4wwNpfKrM0/uSRhvP4YshaJgV8+tkzH8cRmL+eNX/8u2g3nG8T
         goivfINy3FbxrslqhHuu0YUr6IKV14gToVbwF/rigxtlU1Wiq3B6p/hZmF3Avk6CiJ6V
         UiZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=YVi2z4gq/XQmqx1M4+ngQ87EtL5JKbS0q0y/0ZmDhds=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=ShOPYwro1kCxdP5MHVujOkvycrlFotlvAuGDF0MqVthdjePeNwkbPmsqPROnlkydyK
         ouCUwGCKVHM6YOJPLB/vzYib5Vku0s9pcLK0+paHsjE2NRMncgoKInFzih00lwP6JbS4
         JK2tHkABsPtSQ6mFPv+OMpN4wun7MyS4oqxGXmJU2GtO9/Cru0pmunTNcryCVgBn7ZVe
         7fgtsxp7EVxJL5uhKuoYEcKfc6ubJkTi7OMaRr4tlFU1MLQmORU53TLMUmyati+1ptN9
         vemwKojfHRItaOwC+/q0BiCvNwTH3oOLFUEn9+KihNDuM9pKVufrq5IHy4lFKXyk7EMk
         SYFw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id e18-20020ac85dd2000000b0043aa8ad1c7csi3211938qtx.462.2024.05.03.05.58.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 05:58:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-632-CYQcZew3PH2G0e-ObFBMlg-1; Fri, 03 May 2024 08:58:32 -0400
X-MC-Unique: CYQcZew3PH2G0e-ObFBMlg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 80B89104B505
	for <blinux-list@gapps.redhat.com>; Fri,  3 May 2024 12:58:31 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7D8D88C4; Fri,  3 May 2024 12:58:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 45A1E2BA
	for <blinux-list@redhat.com>; Fri,  3 May 2024 12:58:31 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ED7B18A9140
	for <blinux-list@redhat.com>; Fri,  3 May 2024 12:58:30 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-31-KnK-ePFUM0yk5Ai_Joa0Tw-1; Fri, 03 May 2024 08:58:21 -0400
X-MC-Unique: KnK-ePFUM0yk5Ai_Joa0Tw-1
Received: from [192.168.1.20] (178-75-190-98.bb.dnainternet.fi [178.75.190.98])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id 600BF3F8D8
	for <blinux-list@redhat.com>; Fri,  3 May 2024 15:58:16 +0300 (EEST)
Message-ID: <4703c033-5eee-4d95-b6c2-c1e9a9ddf089@harrastenurkka.fi>
Date: Fri, 3 May 2024 15:57:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: nvda2 speech and debian install error
To: blinux-list@redhat.com
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi>
 <20240503123117.6vhsfjpfuhjgwxno@begin>
 <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi>
 <20240503125138.ccmtstpyuyyyyf3e@begin>
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
In-Reply-To: <20240503125138.ccmtstpyuyyyyf3e@begin>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
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

I have now installed the required packages, but where do I set the port=20
and address of the server, how can I start the server, the command=20
nvda2speechd does nothing, command not found

On 5/3/24 15:51, Samuel Thibault wrote:
> 'Elias St=C3=A5hlberg' via blinux-list@redhat.com, le ven. 03 mai 2024 15=
:44:29 +0300, a ecrit:
>> ok how do i install it apt install nvda2speech can't find any package i =
have
>> nonfree defined in sources.list,
> The packages are called nvda2speechd and nvdacontrollerclient, they are
> available since debian 12.
>
>> how do I start the server after installation and make other configuratio=
ns
> I don't know the details, but readme has a section:
>
> https://github.com/RastislavKish/nvda2speechd?tab=3Dreadme-ov-file#usage
>
> Samuel
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

