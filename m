Return-Path: <blinux-list+bncBCV3N6GOXMCRBZ4SRGZQMGQEYIZ43ZA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
	by mail.lfdr.de (Postfix) with ESMTPS id A24B98FF843
	for <lists+blinux-list@lfdr.de>; Fri,  7 Jun 2024 01:42:33 +0200 (CEST)
Received: by mail-yb1-f198.google.com with SMTP id 3f1490d57ef6-df77196089esf2612505276.1
        for <lists+blinux-list@lfdr.de>; Thu, 06 Jun 2024 16:42:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1717717352; cv=pass;
        d=google.com; s=arc-20160816;
        b=MYOe6zh9RZ+JTdEzUJ2YmDpcHqC77HmXs4ymY9tzSnz2XkKlF7nZeEud7x3SJ8J58I
         X7+945ECvx0+UQzUsJaoodKCWvyzQv62IzU4gKunZvqZ56zPZdPmT8C5/p/deerlAEn7
         2FIxCHxtmvyjZ97H/Pv6xXjbA/KTwPKCYxowh2DNP2FnJonZZxx4R0mIk3OWcTZrq+vy
         EbgotGwhSVop3oJoB12y1e8VY+s28a7e42SxlsUwPeQ7V9DO6XpfcSawzaqegP6LmSk4
         ++6G+3mW6KD3mQS77fuCNZNz3HhjNzR3ZuPWxNrqIczV2IKvJKbRtb31YtcEZ6cfrLMH
         nQDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:mime-version
         :user-agent:references:in-reply-to:date:to:from:subject:message-id
         :delivered-to;
        bh=+rw8zkNIB9cy9Mws3IuoAdKLanr/UOKF6IKxRBtFOEY=;
        fh=ElYZUxItIUgBKGMLkifGT12xvPmfLsXNuZShoCFQ4OM=;
        b=X5pYVseOvCcUOwW/dDmGAa9evHo7oLxzZYm6WVRTaywWESQmbJ6jaMhXi4iwn1MCog
         ra/FL2Gs/a+cvE+Fy+MjQZh1mwgdLlzjM20tqFGT4MfMMEcNGTvBYRw6E8FBlMFuM7+m
         UVi2B743TkKZuK89/jPGUaDPyS1uYj1d8+IatohqNuAfiZ6kvcbUwW0UlDknQ0rgDQj4
         2TKsjZoctyPOqciFwApMKm234Z1kxlAiTuzWGZs6H3bqSNzmK90VwbDGmcXCgDDxbwER
         iS7EpsttVjrXmTVO4yLvbZyjlOrqyE77ssC2SJJ6lJEWX+cYynCU1oyIX1foMzJ6cOpP
         o18Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717717352; x=1718322152;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:mime-version:user-agent:references:in-reply-to
         :date:to:from:subject:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+rw8zkNIB9cy9Mws3IuoAdKLanr/UOKF6IKxRBtFOEY=;
        b=m2vOqQUbC6q2lh+5fixWpyfOb776tx+ZNexc9UFp9+yTrapMiznsiGY38iymsnl79D
         UzS9IGKvmOm+fDiYMeb6P0Z03JNriQxcHcBD0oE4pvJIOOl0Q4BKrHskWPVkiRW2VlE/
         RnFuo1X+llZBKKLr7TOCWeD/xwtqc+ceqEGEveq1zJGacMEXhbsdsak0YxPbueH5n0do
         CBFVBpt3sid8t+ka6brPAUc717PU+ba83+WNjt3I6ZCGBCdKqtvWeCcxAL5TsbfJn8ud
         knllXLcJuwfxZHghop/Zun6Tk6vWR59sYf0G1il7WpSPFOA3DNt+5hl7JSiewoYwSWrs
         S7EQ==
X-Forwarded-Encrypted: i=2; AJvYcCUTL99z/eDoJQbWt4tjpb9VunTdLq4IH0iW3CkYZQ9u86GoqvP5pv8V+edqKYv44cNh9gfcD55TwA1oPzvib5RW+dKvnJbsnLqY
X-Gm-Message-State: AOJu0YxIq+bbFtyTxbG37hRahz7xqtyCEisPuLe5Cad4vPUPB3ZtJ51x
	JJSbxFoq5pcq9ZfkTmtTJDM1SA437/qfUtUec1wS68Wlp5TJCpGmV/2F1fKPHew=
X-Google-Smtp-Source: AGHT+IFROYWqjdUHBb790GxczWURwx76Mkgw8ZU4nd82Dcn4E7hHiT7hSSxzq69fY7wbBjGt5YeikQ==
X-Received: by 2002:a25:ae8d:0:b0:de5:5b9c:4452 with SMTP id 3f1490d57ef6-dfaf64eb3e6mr844968276.21.1717717352142;
        Thu, 06 Jun 2024 16:42:32 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5cac:0:b0:6ab:9589:ad5f with SMTP id 6a1803df08f44-6b0573b53aels8869526d6.2.-pod-prod-04-us;
 Thu, 06 Jun 2024 16:42:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUcoATsqmCYS6IzR89OngoBXwjRgXWT/iF5xEiv2dwra4xgY3pHjwHat7E64ZYlTyccE+badWyp7ZY91MKyyjjY1DJND4hwUFmN+6Rp
X-Received: by 2002:a05:6102:1620:b0:48b:a9f6:34a8 with SMTP id ada2fe7eead31-48c27487434mr1112828137.28.1717717351029;
        Thu, 06 Jun 2024 16:42:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1717717351; cv=none;
        d=google.com; s=arc-20160816;
        b=jVtbAXaRRcORJ30IXZAuVf9R+UnCwPDyd/Ug7R3ZY2kGg9WZxnwYTpshkeuwWXRPuE
         ugjQ2xOJ2y0bnhwmvTRgYDGa7avbSR120MJkk/Q0Pt0Jf5jStXCQ4wj1WMaWPsj/bftw
         ucWnCtUeDY+/puCZ3tfdjSti4z6QLSydLfMEIT5rtRaYJAvKB9NZaWsSTlJaCEtzYnDm
         6Ji3LDOTKK+Th7Rig2wzPXfmqbSm4rZB/NX8DgOryi5h6dt1Y2j0W13pwhJ7DuJrKOw8
         Y0bvKogAaVyqPPv9W0hm7EFRyxTpwmNXrTPGXPvw3GsFgpJoQTkl0H015Hd/LUqskAwX
         FVoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:mime-version:user-agent
         :references:in-reply-to:date:to:from:subject:message-id:delivered-to;
        bh=UjByahSHSHs31JYftU7sxl5DNEOBDtRD2OrTGDA7jj8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=enogyNBiLemr9ewLLILJGXUdUizc3rETUmhDZIRt7La2W+lgkQ1uWxKlXwSNKf9dbV
         EbykYkC5a1hDUi7/MSzrU55nMr5lVJuobJ+JCeDa/QZoDB55z7hF+Z6o7fWIyszGY2XP
         aNPLb2mKDfEadQYdTfkM8N4ML/L3yzLg2NthH326qpCsJxBXmwbLSXqL6/0MSI3qW7kU
         ClMY8KUz6xPedBZXIzl2Go8Ve/U2z6kHMues945XsIQq8D+5s2f5xhBdz2PXocsO8wKm
         SxtZFbdNgQi0NjJgYFPoRkVxBs/S7ebxXWIdEZxGXLLFdLNFrR/Qw6HLH1JIUcUT2EkP
         sgYg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-795328551e8si241026185a.120.2024.06.06.16.42.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 16:42:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) client-ip=212.227.17.21;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-688-HdY2dlMmPGuVmdxk3X_trQ-1; Thu,
 06 Jun 2024 19:42:29 -0400
X-MC-Unique: HdY2dlMmPGuVmdxk3X_trQ-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BDAEE193E8CB
	for <blinux-list@gapps.redhat.com>; Thu,  6 Jun 2024 23:42:28 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AB3181955E87; Thu,  6 Jun 2024 23:42:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A76A71955F14
	for <blinux-list@redhat.com>; Thu,  6 Jun 2024 23:42:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 246C5193E8EB
	for <blinux-list@redhat.com>; Thu,  6 Jun 2024 23:42:28 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-244-vT61XaD4NwWfXmGLQKUDbg-1; Thu,
 06 Jun 2024 19:42:25 -0400
X-MC-Unique: vT61XaD4NwWfXmGLQKUDbg-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from fedora.lan ([136.54.145.217]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MpDJX-1snNJo3OUp-00ZWb7 for
 <blinux-list@redhat.com>; Fri, 07 Jun 2024 01:42:24 +0200
Message-ID: <3215df9248fb385b233090d0d844e95f61816f8c.camel@gmx.it>
Subject: Re: RHVoice in Fedora 40
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Thu, 06 Jun 2024 19:42:22 -0400
In-Reply-To: <ec750a02-e9da-4db4-b95a-2172fe0d07f3@gmail.com>
References: <0dccc84a-2eff-434d-b089-d1eaca076655@seznam.cz>
	 <c4128c0d1fd8cb70e053c26948b8c86257ab0534.camel@gmx.it>
	 <1efa8534ecbee9707fadc617c397697d5f23c006.camel@gmx.it>
	 <0f0bd2cef7fc0a3b7d85db839efba6468be5b845.camel@gmx.it>
	 <ec750a02-e9da-4db4-b95a-2172fe0d07f3@gmail.com>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40)
MIME-Version: 1.0
X-Provags-ID: V03:K1:4cLjqufMhzm/jgJojb+0oaWEoklG3Gn41Mgy7TuYWSWLIaKvrlV
 GDgKttXA3VkYQFUjnHTIVpqxH/AtpF7JD/kUQ/q7s19lrCq/Kpw/39lHyarQOS54tP8S5CB
 FaanpHahLrVK5PUDuh6Gzo64e1g43ny3dyrJPxRqvZTUmRwl7WcPdlgbQMyL8ztLf2ProPv
 +eRvC8AblGcpr4e70NJjA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:0/H/TfcgwNE=;gOZEF4c/a1v3o8cUNcWIrHvg7xz
 H02f+tOaP4CCyzk4dGBx16C6pzHP93L4nFmJhozq2b/Era73GMevSixJ36sdNUARVa8ECSggg
 qW/e9eoVBL8iA+n+Jo+otwoYo+cW6O4G69un4TlUNutEUeLnwXmxgPEbQnp0dkpD+98okIWWF
 bc2jiiJlXvenrjj/k3MqjCoVpnGnUJ8RBUKB2/t2ddspB3galOHvsxoV8JU2WznC1YZGaT+hU
 LISfj8Pqw3UHFHqaGzCqlT6hjfi5PUYeQXnk0x63h2r+QZPVYePqhCKc6FtDeZcxUpHPAC/R2
 FfQvEkY3R1wnrNjSP2GY47sKWZE9HYx5io2Fd0QS6UMMmFxrcWqPFqAFR+k/uqsIt3s4/B35L
 NG0294x+NgO5yYsY66Ahcx2DC1qDeAYKMZivOV/x1zb8jfUBuhEzW0ONJ7o4W5EF4VMX9QNhv
 JyEdcpovxILAduqq4WSyqoE9xnS/P5t3B6gUmoxY2ziyT0rrAG0lEZaXdypidGmxOf4ylGpTv
 1hYyEZb3w7POxEBpvUWyCpbGJ1dPPyrs26TNbwbVMKEgoNNPjVgyB/sMbfEFdrh0+uGRI0HdH
 WxOY93I7ADPtlAZn2M635MMmARErWrqjKRXRb2TUzjwz3DpaFVZG7pFrLdlpXRI32NR61DtPh
 XomV6YUJh8ScObdGTabWjBQLz7ccDaL7E7ltlIbpyqg9apwb7KzshIFR0spUiA2G7+hRDCFiR
 3/oPFqx6x1NnOFN6y7OGH+azuH4ewZMF3qIXZhcHrDsuICiqW7vZJj+F9+dU7h4qAsvA9IxoG
 xvmHqOg2+99JF/Wcq//Gy0b0FXYP/wvbEeYOWkgVeow0YNAQ3uCN0JfDpwuyFwWwKk
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

Oh I'm just seeing this response about the ld.so configuration. It ended up in
my spam folder for some reason. Thank you so much for the response.
~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

