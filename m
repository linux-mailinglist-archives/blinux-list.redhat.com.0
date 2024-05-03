Return-Path: <blinux-list+bncBCHY5TMQ6YERBTNY2OYQMGQEEOFVV3A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F618BACBA
	for <lists+blinux-list@lfdr.de>; Fri,  3 May 2024 14:45:03 +0200 (CEST)
Received: by mail-yb1-f199.google.com with SMTP id 3f1490d57ef6-dc743cc50a6sf12827206276.2
        for <lists+blinux-list@lfdr.de>; Fri, 03 May 2024 05:45:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714740302; cv=pass;
        d=google.com; s=arc-20160816;
        b=eGqpY6wt1NUhJeyROcbOBFI9AxA+EX9XgpTkrF35EOQDLa0L6ODU2XdWDwjuum4Bny
         9le481WgZxE8CNKNKGRmjUGqkN9zXDO+rYs5U6hBZ1AruMLjg5or9UKj/Jh2dV1Tya7w
         5JSag0hKcBbbr3PUlRaTFIOEJPuJLaiSWysgQLV1xZ1/U7utufRtt1gnlAs7rHaMERRg
         Glcbg5Aezkh307H3vrGt1KAG6pt+rwGC5NtwsV5Mof9z7usYeW2/X8to2SQU6FRVnq2c
         K92XMk2ww53m296AX3DUaQO4f2xdXzfS4NiEzhlW7ZJE68iE9ps/LaGflpYwBpKM1bv4
         lIMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=vkRGK/gnXu4AI6vQhEPO04PXAZXqvdolycA9AogtiL4=;
        fh=Wd5/HaFZXo55SfcDqCitPzSyVABnDEn7T5nFg/XwtiM=;
        b=d8+JHxJo96t22zYYWel5MtW9mOIUf3byK2TsIalV/vr6xyo0zsmLEQUqZz89IIFA8X
         6vJc+OfgP2Bi0hTs9zeqwFL8WrdFnAp/lDArreRF+PIH/IEqrDBHAhrFX4v1q6xSAaxr
         0eyEC/Q0fyZlGL8/oc2LNBUwonFtyyckyjw/wBLMVt7BED2MeiasBROH9ljDXZU78rwN
         XWTHvSuDMTIOAzNoPya3YuxR/stq8Mwb3c1D6jc0LxnVRhJzVPKqeGaYqy8fI23MpXQN
         6IFOz44L/vMVW5zckCsVnzOSMdrEcLM1nzYjyHBq/uwLQDeQg1OFseq84rAZrLpBx6fg
         r8UA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714740302; x=1715345102;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vkRGK/gnXu4AI6vQhEPO04PXAZXqvdolycA9AogtiL4=;
        b=sWng91GCqkz0Mmx+BDvcAh8I5fUgTcm26wVOKzaFz/IhRbOxQNUhLHSD7Ll/i/C2lI
         zdW0U/0MO5sxEhg2Ijvaqn4Q71OadqF5XnZOAsXLQ7FTN6MkmhUTD1aVc7tOQ6rnW7CS
         aj7saITZLr26+3sbbN8EVZoWirmgc3b3pf0ZyvoFo55ijKa+hHRIpqdx5Zq1JRf3GWRk
         Iq80hvMfdnuwEA60/mjBmpPyHlXZFqnwD/8VafmFSOwTZRoc1FuB58Wi2GEi2oUIXuW8
         YSsGnf2VL44Y0UcGDnuwqPDNv0gk2t5VaG3b1lkZkf7vKL4yXwEldUiGhQYicWTYnDYv
         v/ow==
X-Forwarded-Encrypted: i=2; AJvYcCU3jdcUIsZ7XJy3hmKLxjaJuXPktg/1CynI9DRm8+VWwHzcbyflS9tU1NKCMXJinTTWequYVsTcKAMz9y9ttR9To7lVbDpdW58d
X-Gm-Message-State: AOJu0YyJUfpmIQtG7Ot7RL+alSWboXDudjWTrniQIGPYbbvuG5CJtgTK
	BiguzkvMMygk85OybOi98P7mQINf9Bs7LPuoQbvcfYKN+cLp77RBffRxljkj9aM=
X-Google-Smtp-Source: AGHT+IGZbT3VMHzk1ReOjde8cWSyEqwJ4ub2nOY9gD201dbI9lx+ytq9tQOzhD+tz8AlDfe2iKdDNA==
X-Received: by 2002:a25:6642:0:b0:de5:5575:99b5 with SMTP id z2-20020a256642000000b00de5557599b5mr2496701ybm.0.1714740302169;
        Fri, 03 May 2024 05:45:02 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:2651:0:b0:dcc:4b24:c0da with SMTP id 3f1490d57ef6-de8b54f8a23ls1058294276.2.-pod-prod-02-us;
 Fri, 03 May 2024 05:45:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW49zf9yjyK6NogDyzR2TkZEVpKAmsd876Hu2W/KaAkAeadtys/yy/Ol3nMSyRKw5XkYd8vuvV4qZbdnl6NXg5sgdyNPJdIBYWilz33
X-Received: by 2002:a25:df91:0:b0:de4:7531:c7a9 with SMTP id w139-20020a25df91000000b00de47531c7a9mr2668104ybg.37.1714740301380;
        Fri, 03 May 2024 05:45:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714740301; cv=none;
        d=google.com; s=arc-20160816;
        b=zCitPWKQ6ql9+cQZJpfHbvIUy1f6zxzz8g42OvgrdYtAIFO7T2ArZl7u4iyAtLdhgO
         YpPffM2n4rbmlSjtuc6pkUeTjogGkGlJgVRZawhM5koF/Kwpy/ejQv9fx30XBVGEbSUn
         DYippErOnnwtIqV/KrecevaoLS2mZIOpGRmOqlynUd6wwMIsNUQFvH8Hy3vonmU9vTSJ
         Me+2DvWe0ZgCNfKKq4YBC2DarUpCTZWP+wrqnzhLXLzQtQal4sbCoEqPli7ECiZGzhx+
         +lWclTwlbvmJMWzzSkmamXo0rxIsZGRc1E34f9ztLBgl8WF9ifZkArsG4hA7zMh5veVC
         yM3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=Ok4xOf/JKbS9RBjHcpZsTmNZ1dRM8QPSiFDfNMhZlJ4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=iMHXdLQMWf+mGDFp3AW7gkoTAo0fVnGTkVVocojAu0h6W7o/e7KUQnqaEgum5lBpSD
         d4DaQvLA8/9Tw/6G3bzmudXvNfd3Sblxo7Ch4skYuB/HpfixgsDCG3Srd9qPZA7buvsC
         UjnmlIXxzvtfUDzUnv7F2i/2/2mirRp+MYduh/wxTP/hdhuJVmuiAvSu4ueSAt7AMDSC
         LqRgZD4qDe+Pk/vI/Ddd1Xvbz0F25LvuPsBTxdhZg+nUXmZaS29IGfiGv+g+DNScHWjc
         NeRzctLTTzdtsnx+wx39C/r1H3uVPXzQJUpez65yuwlXaABiSDAe3gZA2+DeHkqTUmWv
         Q5QQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id e15-20020ac85dcf000000b0043ae7068a00si3341637qtx.27.2024.05.03.05.45.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 05:45:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-479-Qp4ZkUk7OnanhJtQAtoqZA-1; Fri, 03 May 2024 08:44:59 -0400
X-MC-Unique: Qp4ZkUk7OnanhJtQAtoqZA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4C7B01049883
	for <blinux-list@gapps.redhat.com>; Fri,  3 May 2024 12:44:59 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 48C476958; Fri,  3 May 2024 12:44:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C35CAC6B
	for <blinux-list@redhat.com>; Fri,  3 May 2024 12:44:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AF1E618065AA
	for <blinux-list@redhat.com>; Fri,  3 May 2024 12:44:58 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-240-Ycd1sU4JOTibNdrrB5zplQ-1; Fri, 03 May 2024 08:44:54 -0400
X-MC-Unique: Ycd1sU4JOTibNdrrB5zplQ-1
Received: from [192.168.1.20] (178-75-190-98.bb.dnainternet.fi [178.75.190.98])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id 36E0F3F8D8
	for <blinux-list@redhat.com>; Fri,  3 May 2024 15:44:52 +0300 (EEST)
Message-ID: <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi>
Date: Fri, 3 May 2024 15:44:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: nvda2 speech and debian install error
To: blinux-list@redhat.com
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi>
 <20240503123117.6vhsfjpfuhjgwxno@begin>
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
In-Reply-To: <20240503123117.6vhsfjpfuhjgwxno@begin>
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

ok how do i install it apt install nvda2speech can't find any package i=20
have nonfree defined in sources.list,
how do I start the server after installation and make other configurations

On 5/3/24 15:31, Samuel Thibault wrote:
> Hello,
>
> 'Elias St=C3=A5hlberg' via blinux-list@redhat.com, le ven. 03 mai 2024 14=
:52:36 +0300, a ecrit:
>> I am trying to compile nvda2speech for debian,
> nvda2speech is already available in debian non-free, you don't need to
> build it by hand (so you don't need to determine which exact magic set
> of versions of rustc etc. is able to build it)
>
> Samuel
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

