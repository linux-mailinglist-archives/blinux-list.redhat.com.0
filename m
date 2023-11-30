Return-Path: <blinux-list+bncBCFIHJ744YGRBZMWUOVQMGQE6EUS7EI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BFB7FF8D1
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 18:50:31 +0100 (CET)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-58d5604c050sf1394883eaf.2
        for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 09:50:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701366630; cv=pass;
        d=google.com; s=arc-20160816;
        b=fKHQRdYM7MF5IF6J5lOEvjaI1HXzdnibUUfJQwOb7l9reUry0RLp2WmtoK2/09kt5S
         UyATSsoZ8xv8tZkfwsjnonI64MNN980nYkBM4c4Fx8JHooC1LAUeH6zCQZh7nOfUAw74
         wQCnvqBhUGMgO/d8zrq4C2B+XfwKi+kPeBNyInFujeyoOQLDFqO0XfPehsGSPcPq2+e4
         bnsr5Y+SPEIEwzhC8WbY16MQ5T/zHMrATJXtiqc7vT6DHVEb9gG6NTq1tFuPcVZdukHa
         6haQBru6ER1cvzFPF9qMhyVmHElUqfch8iawclS83pxEXswCjf9GhyPwn9OKZZmOEaXd
         UymA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:to:from
         :date:delivered-to;
        bh=yy2W+EUjJRTGD/qTBHwMjxPGsZf1FONZcsjkEcQe48s=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=pni5ncjWP2dJKWo6fj7XRFINpxyXz9dlgDA6AT+FCA5ZUFJYFFzjDm2F7RSrHlG4jJ
         02tucL1YuSq1SghVcYAsoxEur9RpIY1VE4EkdNtZkNCd5TpOZHf6RQScVH2Z4xsPUbQi
         868RrWuqtYPapSI6x7tQWKticYTZ7evRWbFj/vJBtA9eQuR3O7rWC1e1yvk0YpbqFdqJ
         UEwZqq9nxPuqBiIm27z24CUA7Qof5/9zpEDgc4bCqx2D1jyfehsykoAGCfGGZH1SqgmD
         84uiEgjax9CXca+CsmaNFcczeaMSY3+/L6sDVOzWM2h2Vi2VJxVy/jpjRPfdUakQEpLh
         w+ug==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701366630; x=1701971430;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yy2W+EUjJRTGD/qTBHwMjxPGsZf1FONZcsjkEcQe48s=;
        b=T8UOWTqpM5eO/tXLOG3JGvvdKz47SubYfAd8wY8FVkoskxSpbnek7fEcYVzA42Zb2G
         q9FYZKnMo0oADtJb1/Ge95Zibl+5r7CkODyhuM39gJ9UzYJx6aDhyAXivdR6jCSEuQNC
         jSgB0XkMw+qwm+xnTLYN17D7A2q4UFOCe2t6eP9lc1DNp1TkSalVMwOOxFuQ6qxWnXYo
         6yFd23uOpJfeNiLwqGrLbD2vVfpVM2FQZn04SqnF89XAWM1jmQe8lZGHanRIY5+W2HKr
         dmHJX4yA6KBDIK+SdLH7UM/h2UwoNXiCAJjoW4YUD3A4PwVwutc5067p386Lr7WUrqgT
         1bRw==
X-Gm-Message-State: AOJu0YxxJ+CxmYLpGLv6Bo/smd7NzGC0MyUC5Xevj+NIN9aLvJgtEb7B
	n/ObZMSIWgTNZFc96b/Gi8Q/rw==
X-Google-Smtp-Source: AGHT+IEy+jvPZI9QkqMyaISkH9BIpsTKlK9zY91is0PAwj65Y/kf2+XxORmeUAOBZSoCDBPTqfc/WQ==
X-Received: by 2002:a4a:e0c4:0:b0:58d:d938:26ac with SMTP id e4-20020a4ae0c4000000b0058dd93826acmr233572oot.8.1701366630032;
        Thu, 30 Nov 2023 09:50:30 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6820:2b05:b0:58d:fb43:70b5 with SMTP id
 dt5-20020a0568202b0500b0058dfb4370b5ls219883oob.2.-pod-prod-06-us; Thu, 30
 Nov 2023 09:50:29 -0800 (PST)
X-Received: by 2002:a9d:67c2:0:b0:6bd:a47:7bb6 with SMTP id c2-20020a9d67c2000000b006bd0a477bb6mr275213otn.14.1701366629433;
        Thu, 30 Nov 2023 09:50:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701366629; cv=none;
        d=google.com; s=arc-20160816;
        b=QSRySSw1ftTNI1cKlevnB70HnHBf2Jj7mLpxEWLVU4JMDgHPk8lisWJaboLSOwbR7Z
         X8/9vV9OZaqLwEcanqdK+cUU2apOdC8iOyBt0SVc3iqEbC68egNsf14hOlfG/oiSQ+VE
         uhYEoq8pycUypoJNSIhhOS0OcI+Jcq5jpVsVyA5FEPuvna6MwwurgYusyenTKcVQE+lN
         A2DZURj4RZVlT4TtliApfdCqPI2QIYTdj3JInqTzjzm2SmookpVAXLpR6Fo+N1lIlJ7E
         giCR2YX2sNoff6xKHdXn04uLw/PGSGLulHoY7qUeo7gxx439Xjcb3xrRJYBo8YxzXl4w
         i4rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to;
        bh=ApVwj96pNtTsIpBpjz6w15yn22+KasphQjOqybzB1f8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=vbWKukm3YnnCY8elmdk7eohGZw70v5PKzhuXDnMZ1lnYZmDF+0Xfm2U1bEiHI7OHAM
         WpKhHhabU9otCxk9oVYlaillCwIjRPDdrm8S4Kwo8gmzNGcy0gWzfp5MoHDByXnaG0uq
         4EdRUcNouMC3wfAKIi1gE5Ufxlx2hHeg3/jxYs5oYwSWo188EOT356AfMHOdRrGTac9L
         hhlNASs7YQL6NzkKpfYGBLQabJHoRlUUHnukzujMsvmzrmAY3xsBy5RCSu5Vyw18BjwO
         ppbC4/3BO42B2QQxyoj1aDG/JPLTVdCzcIkxy1rZtYlPzBC0dEk0CMUrN4EfREQYRcxN
         GoZg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id f15-20020a05620a408f00b0077573396927si1518297qko.260.2023.11.30.09.50.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 09:50:29 -0800 (PST)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-636-kUdSuuArMbqVBdRJDFEtVw-1; Thu,
 30 Nov 2023 12:50:27 -0500
X-MC-Unique: kUdSuuArMbqVBdRJDFEtVw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A3D10382254B
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 17:50:27 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id A085F2166B27; Thu, 30 Nov 2023 17:50:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97F8B2166B26
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 17:50:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 77258101A54C
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 17:50:27 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-148-qiolioi2PqeY6INE1-FkpA-1; Thu,
 30 Nov 2023 12:50:24 -0500
X-MC-Unique: qiolioi2PqeY6INE1-FkpA-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id c35f8d69
	for <blinux-list@redhat.com>;
	Thu, 30 Nov 2023 17:50:23 +0000 (UTC)
Date: Thu, 30 Nov 2023 11:50:23 -0600
From: Tim Chase <blinux.list@thechases.com>
To: blinux-list@redhat.com
Subject: Re: links the chain stinks!
Message-ID: <ZWjLX2UX4dsyL1C-@thechases.com>
Mail-Followup-To: blinux-list@redhat.com
References: <5e6becb6-91ef-aa6b-1a07-af08c37a3f7a@panix.com>
 <ZWi9fsW48rqdh_os@thechases.com>
 <4c9524e6-3b94-f825-6fdb-bdb2997e5bb4@hubert-humphrey.com>
MIME-Version: 1.0
In-Reply-To: <4c9524e6-3b94-f825-6fdb-bdb2997e5bb4@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: thechases.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: blinux.list@thechases.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux.list@thechases.com designates 54.39.151.74 as permitted
 sender) smtp.mailfrom=blinux.list@thechases.com
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

I wish I knew how to make Tab & shift+Tab work like in other browsers.  The up/down arrows navigate the links/fields, but I wish I could either use tab or the VI keys (j & k) to navigate.  Ah, well.

-tim


On 2023-11-30 09:07, Chime Hart wrote:
> Well, thank you Tim, that works, and it seems to stay, but now can I make
> the tab work like in other browsers-and-platforms? Thanks in advance
> Chime
> 
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> 

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

