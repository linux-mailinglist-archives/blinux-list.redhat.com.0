Return-Path: <blinux-list+bncBDYPVTOXSQEBB5XC5GUQMGQEXPUCGXY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 422A07D8429
	for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 16:02:32 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-65aff02d602sf12420556d6.1
        for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 07:02:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698328951; cv=pass;
        d=google.com; s=arc-20160816;
        b=pGWmWy/xOJ21T36ZaGQoLhp9qgcVj/9tnlOdrwAiJQWlUfX29SVhoGX97J2OJueYnJ
         vkEBl22/3qIVJVEr318eMwQYNRBGjodv9mcLM/jcnx8EnFy+mP3H3iYjuQrbWFCv4q3/
         U/zeXukgkvWwXMLvzcpOKKbsxXOgSDxges5+7B4x9Xbn4/lfjabfUeiNoSTGwcs+mZsN
         DPewWjNpie7sQftnP4RBaRfYuAcVdOtGEgwmdXB2iSnXPnLWA2I7BcfCf70Paxyt8Twv
         /bFbIcJ+1Uy3J2c2bnRK6pXX2XGuvZvrXJJtXDtmC6huT072wYBf20Dcq2++KOcr6kPY
         4u8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=5Nlcu2djGvdYufPMwlSAQT2GH/DotHDhpgLHIwsV86M=;
        fh=xUMUTCos3CFSyF5eaYYJX0HqMUYhrie2vhWHItf6k9M=;
        b=xhDKPwRdSeOCQmB6Ww75U6kr5N12JFloXAlCVBmYt3HRRRwfIKYJksoCVflIIk57n7
         ziRzT1ZQmn71LvoraVm0Bs0KSsHdkD8bhGOA0JeYzQFPvgApHKHovO56Ffsa9MqIItI6
         A1Our2S+SkN5lIV0ZWj90fiTdUW85MGt+KVFshMUhNGiJPTjoU3Eamo5zkEwuliVnsxa
         WiYfara8AKsbb+d+cW0hIVsOmqhzLi6L8wDe92lzFnDTIkqa5qVaJLT4+Yh0kaRrrwDv
         zn5SxdgrXNLrHPhvcFHVAPM8+gIGo6A9BYbxbatasQfFdjWc259qOhm+b4GtSvUhfQtK
         ztdw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698328951; x=1698933751;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Nlcu2djGvdYufPMwlSAQT2GH/DotHDhpgLHIwsV86M=;
        b=ohmBixIBdsqRFYH4ZGrnwcQbZA4tQvOLNodazOgmmPzrO9A/SiUTvnbYwmQkOZjRo4
         h84vIoPL+ZS+l4mNz3LYW9BOsn8cWSz3hVpWh+r/SLsT9wCNjKeGNMVKS9Z23ZGD2Xtw
         HcnWDwcmwkAnQA1MmRXxenNXDdPXlYWvoS0HRIBwkn2oJ658kFOryfMbly7tU2ESota6
         mFlQoPgwV6qJNkaZF7aZX2ejwlbvq/Xqj+9GDQUPsRb9QLV/d9St8ermoFptuIhE3MBo
         uhzumEy8cIHZ5ZiFcDNzR2Qj0Z0mBqyMoldhoTexc3qVWrJ4X8hHsjBbZvXM2X6na0RZ
         BAnA==
X-Gm-Message-State: AOJu0YwKbW3EKSvTP8mXUQUJvng/bG4yTpzNCLm3QQLOa9QOLFa0bHCw
	fgfETg3oj7xrRRLjtlVPlT6jCw==
X-Google-Smtp-Source: AGHT+IHvpp1A2Ib79ZsBE0GicK1TQ5E/zNlLQTrcMEG79aqGbhHAgcXm42ata5hYaDsFX19/PrhPLw==
X-Received: by 2002:a05:6214:e84:b0:66c:eeb8:4226 with SMTP id hf4-20020a0562140e8400b0066ceeb84226mr24795142qvb.12.1698328950713;
        Thu, 26 Oct 2023 07:02:30 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2129:b0:62f:e5ab:e5f4 with SMTP id
 r9-20020a056214212900b0062fe5abe5f4ls51537qvc.0.-pod-prod-05-us; Thu, 26 Oct
 2023 07:02:30 -0700 (PDT)
X-Received: by 2002:a0c:c391:0:b0:66d:9f3e:ad4 with SMTP id o17-20020a0cc391000000b0066d9f3e0ad4mr14799297qvi.9.1698328949839;
        Thu, 26 Oct 2023 07:02:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698328949; cv=none;
        d=google.com; s=arc-20160816;
        b=PH9kamFKHfZRlKRxbJWofN1DQfUoHCqA0T3s5eNz9xWscSz1JQDVmuHk4vYrOmd15x
         EfRVwTFk0hIbz+PQmls+pCGUbm9RzX/H10N/XTVdkqzHVRvVu+SS3da4kVq4Jim22BzG
         UtF8DwQ4+OruV1YYh4ODbklKDP2fhI5r2ppfY0kBudXcd7dIMct3hNCVzidparA0pL+9
         ABity+P4Z0zIQPc6RaaIZBPU8H9TFFu+f5dhgWXk2rgCDHhDnolaNk84eW/nOCyLSM9K
         d6cM2SyN8dHsA++hPTXi7KL2V9TXTBR/V9QX65IWdsv2GwKf/TiLlJBTX1RtNOkqPzCu
         1qiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=6UOBsaqV1uy2DBvUKkwHNDhBpkUXqXAI58YaMOhbWZM=;
        fh=xUMUTCos3CFSyF5eaYYJX0HqMUYhrie2vhWHItf6k9M=;
        b=w+lQMapO6sabn3E1Ek5rhaENduasuIktNmcvl1IphUzZAOKeF7mkgprm7Mg0yZL4eJ
         VjAk/+MQL21CA1hWfCAVDvaoKhaHLTEWCNVcB8ncoxah5r9/Howimyh6Dl73/Pq7/4qA
         MDBzgReIElJ6qIn9H2CrelqqOibB1LMKyg8mx9k2hVEsRHamqMC1Uf2XS0yliB39Txn8
         OlCDEQOp9SnxwJEhAx5MRqS9Ma5ZbdwrUJmjCiYDg883fAtpQpiMen8OK+pKyhWuk/zs
         YQLolwsuNav3gKvB9KJTMJLFXeMX7ENdJJIrDMYk6l03/u//lZPQcjlppVDW925CYJJk
         vLqQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id bi31-20020a05620a319f00b00778b12a9c53si8801546qkb.304.2023.10.26.07.02.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 07:02:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-691-vITUNuIWNLaP2wyUZIribA-1; Thu, 26 Oct 2023 10:02:28 -0400
X-MC-Unique: vITUNuIWNLaP2wyUZIribA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 194D3856F7D
	for <blinux-list@gapps.redhat.com>; Thu, 26 Oct 2023 14:02:28 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 15E232026D66; Thu, 26 Oct 2023 14:02:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E9C62026D4C
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 14:02:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DB133800CAA
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 14:02:27 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-205-gd_TzQOgMMWKyLf5-4WU6Q-1; Thu,
 26 Oct 2023 10:02:26 -0400
X-MC-Unique: gd_TzQOgMMWKyLf5-4WU6Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SGSD15qn2z1BG0;
	Thu, 26 Oct 2023 10:02:25 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SGSD15hBGzcbc; Thu, 26 Oct 2023 10:02:25 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SGSD15cl7zcbC;
	Thu, 26 Oct 2023 10:02:25 -0400 (EDT)
Date: Thu, 26 Oct 2023 10:02:25 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>, 
    Linux for blind general discussion <blinux-list@redhat.com>
cc: blind_linux_users <discuss@blvuug.org>
Subject: Re: seeking a sftp site to test a problem?
In-Reply-To: <Pine.LNX.4.64.2310260936510.3063300@users.shellworld.net>
Message-ID: <6d2a7935-267c-c2eb-3d57-f1f5d4b194@panix.com>
References: <Pine.LNX.4.64.2310260936510.3063300@users.shellworld.net>
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

Have you tried using quit to leave sftp yet?  Also have you tried tilde
followed by a period key yet?


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Thu, 26 Oct 2023, Karen Lewellen wrote:

> Hi folks,
> its karen Lewellen.
> I am having a computer built, with  a problem coming up.  in fact I have the
> same issue on this older machine too, which is why I need your help.
> When I access my workspace with shellworld, either my personal site one or the
> main one typing exit causes the computer to reboot.
> The person building the computer has the same issue, typing exit causes a
> reboot.
> shellworld is my only access point of this kind.
> What we need is a sftp location, user name and password, where we can test if
> the issue is general i. e. network card, site specific, or tied to the sftp
> client.
> Can anyone share a door?
> Will likely not need access for  more than 48 hours.Thanks,
> Karen
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

