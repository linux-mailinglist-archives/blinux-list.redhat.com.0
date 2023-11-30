Return-Path: <blinux-list+bncBDYPVTOXSQEBBXHXT6VQMGQELDP3VNI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id CE53A7FE786
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 04:05:01 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-423f4f5f586sf6286011cf.0
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 19:05:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701313501; cv=pass;
        d=google.com; s=arc-20160816;
        b=jwaAeRwX3iQk8m1mpdXob3I5Qox/go1n0bWtUYGPSJqWJJRfY39+VQzW0ttka7gF8o
         rLexs4CRHXa1jmUO9sdGfXF45vxpRrY8SFKF6J7vy3yzwB6B35A+rH/ZjeKQ0aNQgIJk
         PQ4bcnWZ2heII2ITUrhegAs+9rorbY9lgt3Wlp+9ExElC1eKtatrdyqPD9vVluoInbbG
         rT4eK84JPec45QwDswB0gTatHYmA2om2r4tkOkWrR9lM7ZOuj/uKF5SWIheRX/KVzNN9
         mKx3120DjbrzAENla1I+uToTpLiwEnvMtQBqJmwTe791+htECssyGjJPpdb/wNLENh6y
         VqRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=hwJYhKtqaS91RE90ao1/rugIPTp9043IDUdzjZWFTA0=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=AVtF7DQ95FIgnkn+g8WAyBQ4eOVaAgqhfscoVNVzVOhdOUXD6VCCVQy8Bs+lIlSYOy
         vmqT80jG+n7aoLeVH9dokK6phYpobXWA4cdaUbn+iBwWKKBR+YNUc4Y0JLYJAQHMwgJ2
         38c8YTAHiraT+ENP9ji/tUeu6APUtSxSRlYA0cYNj0anoQLJrdE/ocUhRIxbSvReyIxD
         I0I3dLLuu3Eh+FjhPJumb93t31wyErhyCRId8i08qewEj0CiEDZ6+uqr5EBPCk/mIcrX
         8qEOaFn2OAByh4LIOU8Vai9yLYEfRXF5Wz0G+3JlCuueD859zCjvPdgeFTOidvpzvuV2
         Dlqw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701313501; x=1701918301;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hwJYhKtqaS91RE90ao1/rugIPTp9043IDUdzjZWFTA0=;
        b=kXtJiEyS2Smmlq5g6pzgQpcuOUqqpcH+D6yIDEbjAAL2BYeUtJqmVM3j5bXV0NNsm3
         YQXPalAYloSEmzvv3L+6ggXdq4cKO5740MNKLl9lbYDdGVN8SEJbfN/HXdDP+jnbJCuW
         /k7MdQBufkXZknIvyCSa9JPNMhS+rD32iwQJOXX5v4XSB0d7mDeTaotDKOKQLd7ZOzxR
         xQFLVqj4Kk25Jpf/658o3XscymtbTFppd6xT0pmTcJJWzLoUS8vs3TeP0ZrYSqhdY39D
         VnxNEow+txQUqZAiXSIux4QI1KHZg5GSLiUPA7BrIjaJpwUPDPOJ5VECxsYfQaKGMPdv
         5dHA==
X-Gm-Message-State: AOJu0YzcxNjMugQvCLCuidwjFuRA8zfN22SpDxFbIMExrpk+2174QWgq
	MHvULs+u2gOHHXhPDD3n8OnvWg==
X-Google-Smtp-Source: AGHT+IHgFF+/d5UF9539ySUzdXYUOzwcjZhXVooDz4MJBALDHw4Xeb1EPbmOVky19TaPh7OLQEgV3w==
X-Received: by 2002:a05:622a:1e1a:b0:423:98a7:3b44 with SMTP id br26-20020a05622a1e1a00b0042398a73b44mr25258800qtb.60.1701313500781;
        Wed, 29 Nov 2023 19:05:00 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5bcd:0:b0:423:84c3:cf93 with SMTP id b13-20020ac85bcd000000b0042384c3cf93ls608311qtb.1.-pod-prod-06-us;
 Wed, 29 Nov 2023 19:05:00 -0800 (PST)
X-Received: by 2002:ac8:7d52:0:b0:423:6edd:3158 with SMTP id h18-20020ac87d52000000b004236edd3158mr26408132qtb.57.1701313499953;
        Wed, 29 Nov 2023 19:04:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701313499; cv=none;
        d=google.com; s=arc-20160816;
        b=ac4UUNgEAzn/uhbnu32011yhokLtDnGX+AWom9sBIoUVlJPqV7xQZf5pgcGmfyO1EN
         9IC0T1dINVX7dp0c4MPJMGz96E4RpyPSkNfxRzdCkRkW+el1Ng1CH42RHxVNbWHo16sq
         B9RCZE4rE5ICQc3DaczjEWqprFCIE0AHka+SP4bhz6KUEwWdMJWqpCk2a7kHu+j31OiT
         UoTm6RZtOm+0WqPg86pxEhdUsswjp/fw2WiHF2EXPeI3jrdOJNIDfpq/NdjMt/B+3Dho
         rNMi8sxII8bept6zB51NdBrBNXKAvXCZs9VtRZ0F64Un7Sj6T3NkmqLd4ZZuT1fq6PnV
         YKKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=WBAhOcDqvFTuEzQyZmV/qJ1UfjUiPCjOYFP6YoEI+wM=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=Hm/R2qMhxV5PSrvwh3mPajzdtwfbH8kDfRxl9UQaOHM1TyLWIeP/lHzT6L2mJaLNUU
         sL0MeF9HH6B389/jyE+QaitDQKOV82jKFWCufRBA+Q6TcjrLH4+mR5TDexXtZ5L8mLWV
         s/jNfImoY8fPVblxjZr/i3iABe9k8crHZX6k6DCYqtz8tl0o6yPCpu4hpAnIHo2kCgeW
         FsTcNg9SpVkc/sAVsJMTFGh7NPjTdCb1wDZ8eQv2IZPZV/Chwsnr8qLeFJXfWIpfYFWo
         XKPn4cD8v+Th674Llg5wIXTCgqh/FNmb696mnTAvjYe9/mqydruzKbldVFp4Dc/3Aj/j
         fPpg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id bw12-20020a05622a098c00b0042384cda308si225759qtb.189.2023.11.29.19.04.59
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 19:04:59 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-513-hFzVrwMAOtm5XvPaVlhyHg-1; Wed, 29 Nov 2023 22:04:58 -0500
X-MC-Unique: hFzVrwMAOtm5XvPaVlhyHg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7BC1F80D72D
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 03:04:58 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 783602166B26; Thu, 30 Nov 2023 03:04:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 70ACE2166B27
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 03:04:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 03649185A781
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 03:04:58 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-459-_UFcGtlBMWGHtquHzYIKHg-1; Wed,
 29 Nov 2023 22:04:55 -0500
X-MC-Unique: _UFcGtlBMWGHtquHzYIKHg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SggzC1pFHz46mZ;
	Wed, 29 Nov 2023 22:04:55 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SggzC1KDvzcbc; Wed, 29 Nov 2023 22:04:55 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SggzC1BjWzcbP;
	Wed, 29 Nov 2023 22:04:55 -0500 (EST)
Date: Wed, 29 Nov 2023 22:04:55 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net>
Message-ID: <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net> <c9277002-d894-203e-511b-952f27c98048@panix.com> <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
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

links -html-numbered-links=1 should do that for you.


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 29 Nov 2023, Karen Lewellen wrote:

> I did say links the chain, you are thinking of l y n x which is not the same
> browser.
>
>
>
> On Wed, 29 Nov 2023, Jude DaShiell wrote:
>
> > There is no keystroke for that.  You can turn that on in options or start
> > lynx with lynx -number_fields.
> >
> >
> > --
> > Jude <jdashiel at panix dot com>
> > "There are four boxes to be used in defense of liberty:
> > soap, ballot, jury, and ammo.
> > Please use in that order."
> > Ed Howdershelt 1940.
> >
> > On Wed, 29 Nov 2023, Karen Lewellen wrote:
> >
> >> Hi folks,
> >> for those using links the chain, there is a command line option that turns
> >> on
> >> links are numbered.
> >> Can someone remind me of the keystroke?
> >> Thanks,
> >> Karen
> >>
> >>
> >>
> >>
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "blinux-list@redhat.com" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to blinux-list+unsubscribe@redhat.com.
> >
> >
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

