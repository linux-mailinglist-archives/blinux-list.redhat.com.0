Return-Path: <blinux-list+bncBDYPVTOXSQEBBDUMUOVQMGQEZ5X4XEI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mail.lfdr.de (Postfix) with ESMTPS id B57127FF833
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 18:27:43 +0100 (CET)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-1f9fcdf9a5asf1609403fac.1
        for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 09:27:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701365262; cv=pass;
        d=google.com; s=arc-20160816;
        b=BEzHtIS10M1Etkr+iRNQUFNUakCw64hEq2hu815GFwFgoa0VNKsEWeIAxiSaD+MUHs
         Uuko94wlDRZ9PBigCck1R40GcQNlG3Z/fU7gRwTC3Hr7af21UUO7YFaPETLxcstYvEr0
         aYPR7a3mZtHueji0Sr0cHcKvcMBa2sd1dqp30bX5Uy2QiFlw8qYsOCgQ0cCmwo8LQGGC
         g9EJWuMGrqQl79piEw+pqdlf+XTVGprqwvSjQrKA3cyA94/tKssKmKvYHkiAO+OaB1WD
         pZY700iAIYjbdMwxGJeXVZVaXiagws+BuC55Zbj883hUjlQoK5J4OMoLMpZGSyFXVIz/
         d4oA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=CU12k75KTVJnNFwRl0y4Py6nMv7c9Cdicg/O9k9OF+0=;
        fh=kmFVvUygEbg3y4v+YLw78QEgTFzMbPk2Zqqx87uTZVc=;
        b=fpPg9FBo27L8y85sYwoWF/FsHk4sOwpz+HtDyGn1OUgMNDEqRw0jBbwBsirVgGwU2w
         3i2SiyVzfLIDGsSG6Fnk5S3Am5ZyiFdE8/SIsjvQuLKbg7Zo1SKopCFPLImoH+bUCqfS
         JYZBWdfHT7NxFe2G1QFf6xmc4iIQLhJZ43/op7DUS/yWfYttfKCqCQqGJunZBfACCyCx
         fG2F6u/Mp1Lr5wibym4W1gHwk9qjwE92TGwRTNI1sZQ258kR09q03cIyUChZ4E5ICoxd
         KX5t1zqFlU6xwuabJnCnJRckKqzy0+8FtnADgLm1HKfy6IySXlavLYQcGTufzjbk/U46
         xTwQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701365262; x=1701970062;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CU12k75KTVJnNFwRl0y4Py6nMv7c9Cdicg/O9k9OF+0=;
        b=VBI0/eQLUyd8i/ZCWpt8PsxgQ0zlgWDGPV4shAV8Bam2U1npABnp7otfS6bqdIpAGZ
         afHPe5OxVypHuLO7PHEWeqPFRNhMYBJlapwS/WIvhwtodGENXoqaQP6jDs7YO4PjVWgn
         4h/yJe71Naa62ziDkt32mOtgK60lZxvI2skyJC3eL345Ddjm0lO0wPytUdnGe4ftf4Sq
         2opKAvmeXiA/oBy+3PMcLyt3idzRwu7aFyQYAhSmaUWQMK1dbA6yFIJGXqkSWE4crsw1
         KWZVygFHYGwq4KkeaW7njTCmdHi8ala7sixiTkJGBXqLbjj1e1mtua++fpCCNHTggMIO
         KJRQ==
X-Gm-Message-State: AOJu0Yy8DAnkVdWMEhFiw2wtzjr9hbPu0IEYKX6j4yyXnysxTM0OaljT
	Oj0ovxCke2gq1nK+GMmDy+S6ow==
X-Google-Smtp-Source: AGHT+IEoWQoPR4V7O0VuId9acUr87yT9tb8DbQ+kdlCM8R8X4uDUAx4MUNYOljaxqig8VpxtvddxYg==
X-Received: by 2002:a05:6871:5d3:b0:1fa:14a3:703 with SMTP id v19-20020a05687105d300b001fa14a30703mr25174631oan.4.1701365262545;
        Thu, 30 Nov 2023 09:27:42 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:bac7:b0:1fa:2fe5:f5f with SMTP id
 js7-20020a056870bac700b001fa2fe50f5fls384820oab.0.-pod-prod-03-us; Thu, 30
 Nov 2023 09:27:42 -0800 (PST)
X-Received: by 2002:a05:6808:b0a:b0:3af:8ed3:d7a3 with SMTP id s10-20020a0568080b0a00b003af8ed3d7a3mr195565oij.54.1701365262022;
        Thu, 30 Nov 2023 09:27:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701365261; cv=none;
        d=google.com; s=arc-20160816;
        b=lqavTfypTiDFPGVURk0m6/3hYDfKgtkxUPuO6vw5esivicMlG3TYakl/FoPW3sUer8
         egotPLcK5PcHbvVZur1SH6ccjki9zN2VBr6PzyJrAEiaGfly6zVYXU4PeC11hF8C3a+Q
         SAyuPgPmVEtcRs+sgXe8++QX0glGY38GB+WtSUvTc/6AKNoxb2e+5Bu7UT5bzT74zwCK
         PEuoJOTbgK7oUvOmD+1jNeFCwnZOCS3alLzkvoa9GxbIr/aYYdR41wlvO/c9zlK60wwZ
         megmUcatlFnzySbpZAGB5Sq04PMCtp3yFJsN+QHfjm2OhTMn9uMo+tDKjCV51gtNXfeS
         enLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=tDoKyKKvMkXISIQpfJYqm4xTslvwVJPCDwWCl5SzkbQ=;
        fh=kmFVvUygEbg3y4v+YLw78QEgTFzMbPk2Zqqx87uTZVc=;
        b=GxGxfZ5JrBHl3CXpg3baBEBJwqjxcKD/L4p7XfCKiW/qsKYXLcTkfo83PlrUykx/fJ
         TvlePzsNewjAM3p0tvYy9Uu5o4Xm+qYHbQwtUFz1SEeevoGhC0EdDLgmNoSeTQu93T5u
         /LLxSDTM6feUNceZWtZd9lkxlZI4kk6BJUh8blCeNzOdTcvGQZ4JN9PKES/Km3NQTEdK
         vbhUj1VjH3c7edYyeQdY8L8E8PG/SDN64eY0GSwn9+VdeJCL3yezhzi75qA7yQNoUhzP
         d2Z+N+wuvWsyIAR9rwOka9hPXhTIsiNgcKkxwiJ3FqcMh16muea3YBCu8W9SvPstd/BM
         8edQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id or18-20020a05620a619200b0077d7b083f62si1451310qkn.655.2023.11.30.09.27.41
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 09:27:41 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-74-JOP6tc2cOaaeNSLu2N9kvw-1; Thu, 30 Nov 2023 12:27:40 -0500
X-MC-Unique: JOP6tc2cOaaeNSLu2N9kvw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B8213185A781
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 17:27:39 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id B45F02026D68; Thu, 30 Nov 2023 17:27:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ACE842026D4C
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 17:27:39 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 90AFA3C00094
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 17:27:39 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-433-kP4ihGcmO7aSnrM3titj5Q-1; Thu,
 30 Nov 2023 12:27:37 -0500
X-MC-Unique: kP4ihGcmO7aSnrM3titj5Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Sh36d43c5zjtb;
	Thu, 30 Nov 2023 12:27:37 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Sh36d3ph8zcbc; Thu, 30 Nov 2023 12:27:37 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Sh36d3k8jzcbC;
	Thu, 30 Nov 2023 12:27:37 -0500 (EST)
Date: Thu, 30 Nov 2023 12:27:37 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Tim Chase <blinux.list@thechases.com>, blinux-list@redhat.com
Subject: Re: links the chain stinks!
In-Reply-To: <ZWi9fsW48rqdh_os@thechases.com>
Message-ID: <da372ac5-3028-9989-67bb-d85b02070231@panix.com>
References: <5e6becb6-91ef-aa6b-1a07-af08c37a3f7a@panix.com> <ZWi9fsW48rqdh_os@thechases.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

That works, and I thought I had tried exactly that earlier.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 30 Nov 2023, Tim Chase wrote:

> I think you have to follow it with a 0/1 to disable/enable it.  So the following worked for me:
>
>   $ links -html-numbered-links 1 duckduckgo.com
>
> -tim
>
>
> On 2023-11-30 11:35, Jude DaShiell wrote:
> > the -html-numbered-links option on a command line does not work no matter
> > how it is entered.  The documentation is vaporware.
> >
> >
> > --
> >  Jude <jdashiel at panix dot com>
> >  "There are four boxes to be used in defense of liberty:
> >  soap, ballot, jury, and ammo.
> >  Please use in that order."
> >  Ed Howdershelt 1940.
> >
> > --
> > You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> >
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

