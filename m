Return-Path: <blinux-list+bncBCVPTHE7K4IIR2M7VMDBUBE3HV2X2@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 119E17FE6C6
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 03:33:46 +0100 (CET)
Received: by mail-yb1-f198.google.com with SMTP id 3f1490d57ef6-daed1e15daesf612502276.1
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 18:33:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701311625; x=1701916425;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wef82dlzZfvAr4mA56XZn6yEvi9yZZs322sEF4md7f0=;
        b=LVcH8EetMQHODqB0qv3bHzbzzpUMjrAH3cgJg4sYiyajXxdrJPgx/cvbNESQ67zd+T
         q+rS4Y08qIIc9nTfKjvgCE/LqOR0zrFUWz/tP3/tSZrwVgphUVrRIiGUghvkJJWgnjFN
         bzPMNywSjnIsRoRdPwnwA7AhfidjfFhQC9jaEqI77p/tq5RUZtY6En+NvYMYgHJunlEs
         ZggYDn3ylo7hFr+D80LY2BkFA0wqHGSEiLre3dr2ML+mBYg6S/eAM9tSlR08UIU5g7qG
         iIW9/toQemxnHf3VFAps5ANjmW3fnqYOkimP2Na8eskFjG96ovCePWX22PLPQ50ufBq5
         OmbA==
X-Gm-Message-State: AOJu0Yw7HkfYS/Y9vG8RBJbcZybJiOcMvc9yVOv8Cu5sWjHJ3CzD7fzO
	FiQ+VHiiEynaDnlmx/mXEkNR9Q==
X-Google-Smtp-Source: AGHT+IHmb5ZO83B3pa0Gwmq8qfDBrv8AyeAbbEHSnbGvSge5fY+IzS2M7kSMei94lNHj8yU5SVx3Gg==
X-Received: by 2002:a25:bfc6:0:b0:db5:3b5e:690b with SMTP id q6-20020a25bfc6000000b00db53b5e690bmr296293ybm.32.1701311624720;
        Wed, 29 Nov 2023 18:33:44 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:7e81:0:b0:d9c:d601:606e with SMTP id z123-20020a257e81000000b00d9cd601606els496845ybc.0.-pod-prod-02-us;
 Wed, 29 Nov 2023 18:33:44 -0800 (PST)
X-Received: by 2002:a0d:e60f:0:b0:5cb:e94d:17e1 with SMTP id p15-20020a0de60f000000b005cbe94d17e1mr22577049ywe.10.1701311623893;
        Wed, 29 Nov 2023 18:33:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701311623; cv=none;
        d=google.com; s=arc-20160816;
        b=KehaMWTkbr1ZHSUKMhVVBi9IZJdC/Dkzizo6UfSfj55Eh9nq9baghjeeIL3uPGrsTt
         dmcxz/WuAinkwXE8r5Wx5teZSwZ9WqdZmS1aKrzWSIjeuLlg+aD1tTfFm7PAT8Jmxr1u
         Tpq8xg7lrvc3xlilM+JUpGbp1IOD29p2THAsPezybw35aNdJbf3s4Gvk/lRTOWJ7KB/i
         lDxdhPtcMc+8fLm4abXnVK3QRm3ND2d4IPS5avNvbGUpubdvTx+FqkkqRYHy6p9Y3URZ
         D2nSjEnZS/fJcVfZFg1EISgxITAACDwPCpHjNYubxTPsR+rOnjzaOwY5WlGUmyqd8SFH
         uGVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=wef82dlzZfvAr4mA56XZn6yEvi9yZZs322sEF4md7f0=;
        fh=bCabGQs3jn1s0M0qXUniS/CTf8AL/F0wZwsNHkuqrnc=;
        b=IyNAkTuThMquTxEPnaw+CbN38U1uxcr6wbhRRG4rTOvnp+Ujrkfv04tolO38FVz6Qk
         mb2gVSxOED33nZr24vBp7KEpcCZ6ZE8htYI7VI7qjq7qTFqWCKJEMe3214IsyapqiP1N
         Dezz9aAUIBgI0IFSC/B05rYvjP7JsoW582QfD4Y/ACmNMcsn7qz1miPXaEwlxHOoUXhK
         dQoGHlXOhoqd3Z9Z3cPUFNkmc409wvHRfeRZbzhN2ECELtgHoY9Xpv8YxZ6Fzw26yWzV
         WugnwDNMBFgbJkb9sh+SuLpd3MLpd1DEISKLsdPlFq9vXkV3D0CkNUBA/T2fsQJs5nY5
         cbrQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id fq13-20020a05690c350d00b005bf6760f0fbsi138115ywb.194.2023.11.29.18.33.43
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 18:33:43 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-445-7OqNU75wMA2AkI9awLhWTg-1; Wed, 29 Nov 2023 21:33:41 -0500
X-MC-Unique: 7OqNU75wMA2AkI9awLhWTg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 03188185A780
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 02:33:41 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id F344340C6EBA; Thu, 30 Nov 2023 02:33:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB6E140C6EB9
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 02:33:40 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D031185A58B
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 02:33:40 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-225-Hh5h0HG1PBq8s7zfN6ImIQ-1; Wed,
 29 Nov 2023 21:33:38 -0500
X-MC-Unique: Hh5h0HG1PBq8s7zfN6ImIQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id D60ED44FC7;
	Wed, 29 Nov 2023 21:33:32 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 9BC1A1001B8; Wed, 29 Nov 2023 21:33:32 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 9B5371001AA;
	Wed, 29 Nov 2023 21:33:32 -0500 (EST)
Date: Wed, 29 Nov 2023 21:33:32 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <c9277002-d894-203e-511b-952f27c98048@panix.com>
Message-ID: <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net>
 <c9277002-d894-203e-511b-952f27c98048@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

I did say links the chain, you are thinking of l y n x which is not the 
same browser.



On Wed, 29 Nov 2023, Jude DaShiell wrote:

> There is no keystroke for that.  You can turn that on in options or start
> lynx with lynx -number_fields.
>
>
> --
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
> On Wed, 29 Nov 2023, Karen Lewellen wrote:
>
>> Hi folks,
>> for those using links the chain, there is a command line option that turns on
>> links are numbered.
>> Can someone remind me of the keystroke?
>> Thanks,
>> Karen
>>
>>
>>
>>
>
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

