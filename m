Return-Path: <blinux-list+bncBCV3N6GOXMCRBV7WWGZQMGQEXUXOQOY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F6B90913B
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 19:18:17 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6b07ef34bfcsf43601576d6.1
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 10:18:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718385496; cv=pass;
        d=google.com; s=arc-20160816;
        b=kVGD0eK8/8FVkoTOfrJTr6KE2pERC2OqWElVrYEv7SXflXWrUFeKrq3Z7J/R+RUPZd
         tB+bT0P32bzsSPj1pOqFPsKeXIUWQqPx/44U3oy2e0aJIbw231iAxjlBuGvMeOTE/Arl
         3gCUanyiqje7Q3unelvh1duJxI1+swIvOSLGomzEqKWTslRO3VNNCDuSRtY3UjuuUjv9
         DbRnVkLFZdKsoOitti08QSo5sNsFji+Fj1n1BNr6X1yK5Nas+8EIqa9mx2JLUjvm8fYW
         pjPfkANoqzyS4rGWMCogTQJrFmbP+y8dRYry74wegBRiEb5q3i33WHccdWThU81TgrEW
         wF5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=ZgQb85sAoOdsMF+Top8yUGfOEqSI32U5cK4/RR1wz/Y=;
        fh=e4d1YAA1lDck8n/TfQePJq3frm+gHxjdWbo6HhlkcEU=;
        b=o1nzoVoCCWqWjPyyILyg1rJXxOnC8tJiXuAloyxe2vFmGdpmwsN7YqhMl93w1IWi0i
         25ktcLmElHmhVi1hkpBfqvy0pkkkmQ9YZ2+ZkBCZ0oILqbpxZ/2jDdehfpZtX0QvY+4o
         AvIL2lmYS8bOKMRuumap+4o4k4gVUVHpLvNddmOoJWw1OiHKG5rIv9QAnltNOPsL/E8O
         kTdZMU/7TU8TrJ4YnOxjiqs8ZmeMa/jtY4tT8bt/si1+Pz8319ydq+ZcUihXhjuS1X7p
         dknz7+Abc5n2f6KhQ8Ekopfcb+NRc4XrdiCfuFkFgHQPRtC71zzC+CdkuQqBMMpvejOX
         sTgQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718385496; x=1718990296;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZgQb85sAoOdsMF+Top8yUGfOEqSI32U5cK4/RR1wz/Y=;
        b=KW914koG33Y/+q9QGklpUnGrb8Rw/JaRnsYWmZl7yipoCvySI8z7gITUE7B9h7Y9tL
         h7812kc96QIMh/r9wwi43R+u4nceGfJxRGV10x1woZKIg4WwNBwHYpNzN7HOZy1VYrrk
         Wc9vso8GI2AHw1kcj1g/vkDAEgsiEhQ9hA1cUNfdexx5RikGyWC3uSnSs8S7PFuJGTkA
         NLVD/LoUC3N0cDDp+OcYkcaGJAXCReokYBslU1iDHC1R7Wa6ZxNu5nNTnSl8JCrKqArS
         N3m90hvMDNTfyhAl/Hi5ODbqUTL33FtpVYWzWtJzReSHR6ggv8xs9aSda6gx+m0nOeoA
         Cliw==
X-Forwarded-Encrypted: i=2; AJvYcCUC+j5IW4EtOrle8h7mo+ZmBhtnfI++wVJu7g4/qoUQ+WMQ0XYJXEq9aDxHx5ndj6L+eanltyPF4jBALlfO4s06cjrdw4M8O2Wq
X-Gm-Message-State: AOJu0YwPuZp5ttkoZndzEnVn0xdCh4AB6lZ3syFl6spp2AfuNf64OQ2C
	jEy+5ifXcAnVSZkSnS1Xj5jmeIEm8zSV34FF0a5CHWXmHrL292n+UJB0RD91IIQ=
X-Google-Smtp-Source: AGHT+IFJtkeRqz7jl6E9lQLJwa+lZvKEtET86DbLbIVEHV9fvE7X7VhtcPU4exN0s7NBVJ+BYprbWw==
X-Received: by 2002:a05:6214:c6d:b0:6ad:7a01:1980 with SMTP id 6a1803df08f44-6b2a33a9bf4mr105934716d6.2.1718385495820;
        Fri, 14 Jun 2024 10:18:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5c02:b0:6b0:7d67:d552 with SMTP id
 6a1803df08f44-6b2a350c1a9ls54956236d6.2.-pod-prod-00-us; Fri, 14 Jun 2024
 10:18:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWkgMisaxvKRliWMJdZD+UsoheathnzRXb5svSyKbNj8ZbaLAZmFwcQORe5vtZ2HXObth18ugYV/U6Q4rfZWjzTKOcu+Gc5bQCWf0F3
X-Received: by 2002:a0c:c486:0:b0:6af:33ed:87de with SMTP id 6a1803df08f44-6b2af2eef89mr49856036d6.20.1718385494694;
        Fri, 14 Jun 2024 10:18:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718385494; cv=none;
        d=google.com; s=arc-20160816;
        b=X8qnvi5P/spzF1G8bxFZ+J1G8vhrgIbOMS/3pGxZqT1SL+t1BzB4sOLDQ+57odS2D3
         70Oc59ZQnMSCFUa3gZk2gW2KhgbMusCkJkeEPqDOCSR3l8KepJmeKaOd5Fen/MFT9S8+
         OH9HjsXjwvqA7nbgV37FkDqQPnlvZ9Ccos4Rx5PwCIamw3nV82fZY5aNTia0YdlUKrvI
         uzoYxjCt55sBHDHAsWqIF8FYN30nCT31evyitXGuUilSrOj7pUdTsZn6XqRtBSYjej7U
         RkznaBKmypOTc7DvW8440qWe3SMELTUz5sokKndwaS+U+00QnhegfHAobo5wM0evr0pF
         kb/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=nUDXogLVaamSNzMAdP66gkx+cpnDfb1aKTlm+cq3xZo=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=x+JeFsAN9Ugesj5vuGYhDfSPNbY/YlmkTjN/xwf6SKMJIKvjxAwFR6aBd6HD+Ve//R
         bLWMR31sLDGaEPm2VrSz7FGe9lVpSc23deL3aLqYeTE1q/96qU6uWRAKX4Sxv9nXzvAG
         RCNsM5mfvd5VVD6U8tUE0h3mp/EiovGh+GG4haEEABdNLlAy5qfxRsz4MftDy+JnSFbm
         2u5alsw4yz7LOQjvHPg8Be6uk0D4eTs1qhOSgvC07T7KzyqjpZk3t5iWUAxs34+rzxV2
         dG/+UFYF6HUROcVGQPjgAPzgDH8clOPg22o98Ox6z/8+MJsxCSIMWMJAt50K4XVzzXhj
         HIcA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b2a5afd109si43065696d6.228.2024.06.14.10.18.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 10:18:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) client-ip=212.227.15.19;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-590-6ZTGH2E7N0u0dLT2Tr2F7Q-1; Fri,
 14 Jun 2024 13:18:13 -0400
X-MC-Unique: 6ZTGH2E7N0u0dLT2Tr2F7Q-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 40264195608C
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 17:18:12 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 315D41956056; Fri, 14 Jun 2024 17:18:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2EEC91956050
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 17:18:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 257F519560B6
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 17:18:11 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-308-y39WBHiEMfiSDt5H2WAoPg-1; Fri,
 14 Jun 2024 13:18:08 -0400
X-MC-Unique: y39WBHiEMfiSDt5H2WAoPg-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1Mw9UE-1sYjzx0L5w-0186FF for
 <blinux-list@redhat.com>; Fri, 14 Jun 2024 19:13:05 +0200
Message-ID: <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it>
Date: Fri, 14 Jun 2024 13:13:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: What Happened to duckduckgo?
To: blinux-list@redhat.com
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com>
X-Provags-ID: V03:K1:8TK4s5rnmpGeqZPmuSuacTAzts8cy92xeowK9UK1GLjEOILgalQ
 XO/DIb6KteQRG2e+Eyy8C7IrFMdvEtqKT6DrKlgjofGPgUjw6l8jvcO2Rr/9dzS4XaMn93j
 mpxG3R9bNz67W/a73r40HjOTSnPaNSkVAjRpSLkAXy9DiK6Tr5X2XJbYb9rrOw9oWgiUMgw
 6ahoZqM52w8PX6G6Y0Mzw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:19gTVfxTsdY=;K7ScJ5iEz0Ws6HQvu4uqtEDcfwc
 BVroX/hltB1SJnKP+2nxM7/X9tLnZy2NhdjeMGvVQlrX0sfxTQmS7gfkyMDdKz/q87fMUqRvb
 DOExoxCAaZQZcyv2pxcqkbsI9J7CcJW7hRZcihZCDs7t42woPXVc+hutZFgCbK2kJiMkx8XGx
 aCMKuJNugLtBqwAxHk3ERqLfFs7q3r9oXrjv4FXJW0hu3SIhhYHnV4lj4hO8CINdc301pVzUT
 cmrGqtaphohtc16msTby6zwNdA0iyR3x2gjJE7m5qiKZygQBjc1E0x+QhBizkeBkuBdWXoOLB
 sRUI1Xr4npYpE2XK7A2PM88f26GGzBdmbtzhWRj6wWhdJ5rM7kbB0fAEcPbx9ZGtIfODVEtKa
 ui95DpgNdbTep6f9kixZGoVDH2irpgqbvpfQZiyiWctfCb5/mf91fbvkZrV19rVH/YyEtdIA+
 uOcN0yJEYD4NtJ3EYUoBge5RfDM8LVyYNB00jWEjhJ3RqOIBcyTA109E8t8nUNXYlS10bRR1J
 inGjKCZZaVgfV9U7jzEWctjBDrXJC5PfQBn3H+ctj4u6Fu7CVmb7wtXCjhEmQ0wjcWNAPVWjO
 DWn+Fo61vRfr9lxP5rhkWvgxJzSW3/pCAoC3WLAPad/CsYZrF+bshNBejtN7Kofm95HQKPyFj
 mjEvupKIV86K4LBGWEBYwXFCj4dd5pOpyYn4SuRDkF4qIYSbytECKU/EvT3zE9paws07eUI1I
 5Ti9gKK+AYUqEd4XZhzG0icfQdAtC7boDRpj3A+g7qBrUUZ4fhuN86tBXCl55kgRrYPkGaQHu
 8cRdvKNZoBB8lVSDgW9ydY3jo+8w85DQh9bBZbL92FYDU=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

I have it working here in Firefox, but I haven't used it in a very long
time, since I saw a traceroute that took me directly through msn.com and
found out that they actually show ads via Microsoft's ad network. Since
then, I found

https://searx.org/

which runs a self-hostable open source search engine that is not powered
by Microsoft or any other too-big-for-its-own-good software company and
shows no ads. It is a metasearch, meaning that it aggregates results
from the big names, but you have the option to choose which of those it
aggregates, or you can stick with smaller search engines if you like,
including the open source and self-hostable non-meta search Gigablast.
There are others, some based on crypto, but searx.org seems to be the
best, giving me the most relevant results, far better than DDG last time
I used it. Hope it helps.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

