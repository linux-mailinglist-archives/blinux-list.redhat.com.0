Return-Path: <blinux-list+bncBDYPVTOXSQEBBNOWT6VQMGQEZJBOCXI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AC07FE66E
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 02:53:59 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-423a1e19a76sf4848921cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 17:53:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701309238; cv=pass;
        d=google.com; s=arc-20160816;
        b=JBlyBDXAnCQddpCAVSRC55XYyKAwshXeTkF2IKvPbvcoWhZr+HI46apmdAmLEBEubR
         7IHf+edNdeKi/BzYdLZNxSaXQdSKI3FLVp+4gukWByco1g6nRbwBf2fskZFKvzRvr/4p
         MxNoWUWo0NmhsXLoKoyehiM2eXTo5QAbquDVeJ4OpoWfa0+i9fE+magf2P4+osewpa0y
         zOn5yXFY0vGYGJR1z+Y6aTLJl5eL2PsqIpWCjRODcvJpsmOoxsM3E87DfWO9wsW7RoFU
         BSbsLGkir6Y+6/D0a0zQNAQxcsKOuyEIveGVdJGTfICpDBYDp11tIjrowMJRC2/oXw7p
         TJng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=KktGgaXVETQXfB1GzzEozbP0lmRcaLduHxmhsL6mvgE=;
        fh=Fku0pTnhkFLD6c/WL3jDDCEXY3oFpeV8DKFQ7ishoJY=;
        b=gBf1jPlQD7PcAuhhPS3bAYU6J6cXtfk4Ns6DodMCvk4CzndHaGeXiZiI1BbTrbXoNI
         YDTNLhoB87Eb8DlnMdxt7zu90Vft88Fv6il18qWN7W33IoI/7M64PdoTiIaFD3WHPeR/
         P1Z9JO3ym6Dx7o8eUkP7eOfavfsM1TgvUAwWAt6N2ChmJK78htB+oubahybPLAMg5+PA
         4FCs+hvbAHptbkMply42CVYaIPyb+D+56aU+NaWe45GiRzFKzn6Kc4ciyyQvVsNs6Q/7
         FcbhljjLIDpTR2H1kL/5/FRelHERuOrdN5IUUsGexlhdqaNk0baQvB50IjiKk/NDYPtx
         QkcA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701309238; x=1701914038;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KktGgaXVETQXfB1GzzEozbP0lmRcaLduHxmhsL6mvgE=;
        b=axkYALAyvdSV5Jo9w0JQE/xOAiByBhljA8X1Nb0snvWLgcttViEbhBKoQc8yAzhXMa
         TqLnwSXR5CzMID8oxgkgCfD+jMf7jlNii0gfZHE/wHVl/lezQbuwz40HjhW8Mp8KDr9u
         LEJwCu04zdkXDddCogv/9ydztdHr/ESlKYualE0O4ztOzyRt4QVhJiI6wGNZ8NR64Buo
         eRA3Gx4Kw6ybg0+J2XETTznIY2bY2tVTWzcaEQ15jeX+YvRrlb5kw8AsgruIMtrZaYPL
         YLAOBRBZyuRdi0sxdv2xhDQU/Cbw/jpQCqtpK/ONIAH06gihCL3PeQ17RDZh4hX8mKme
         muTQ==
X-Gm-Message-State: AOJu0YwDSoTojpBCneTI9urKEAiBMsJ//1IgJrfruRRKdgFOgO/rgKGC
	f60i0Bd55s1740gUWkha6+k7aA==
X-Google-Smtp-Source: AGHT+IG5u1TpAp3R6b29SEk35k8nogZMIwrgfrs9paDLOy0yiEwLiL9a98eHFcaK9TlZCsu2zpp88A==
X-Received: by 2002:ac8:7e95:0:b0:423:7df0:21f with SMTP id w21-20020ac87e95000000b004237df0021fmr27069958qtj.21.1701309237999;
        Wed, 29 Nov 2023 17:53:57 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:18aa:b0:423:7e09:4f05 with SMTP id
 v42-20020a05622a18aa00b004237e094f05ls531743qtc.2.-pod-prod-08-us; Wed, 29
 Nov 2023 17:53:57 -0800 (PST)
X-Received: by 2002:a05:622a:408e:b0:423:f08b:f126 with SMTP id cg14-20020a05622a408e00b00423f08bf126mr3034442qtb.28.1701309237294;
        Wed, 29 Nov 2023 17:53:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701309237; cv=none;
        d=google.com; s=arc-20160816;
        b=FJLNUtyC4dKqK4pMCSxfFckMI5rJviroo8vkyAu9heTEQAryiwMaiGzKvQIAJ8qq95
         ZciPM1Ao7DrK4j7tj3yYAzoVO9ZmlTx4o+q5VnFD8NxeBggmBBItzqM8mmzxnR4pj02+
         fEA2hFZKbjxyesuJGKyjR+hKmCdHfgNXzprgWZ63LF1KPjm6LVXsD3n2ufr9RbK2RBBS
         LWR2j46zTlSvXRoECwtJDIddfC9+cHZpie1fdFZFwN2VpbOQwzPb5XZpsZ+LdxhdvkfT
         9qh7GtCv2YxYIOh4DK9A0rjJPLoJv4X6V+zDk86bp1r68pm1Dg472RGgLE9B+wZMdXhO
         +ULA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=5IbZsWEwAVgTtmXOK8f6BM8Y95RoJv2q1kY1C7erBUA=;
        fh=Fku0pTnhkFLD6c/WL3jDDCEXY3oFpeV8DKFQ7ishoJY=;
        b=kss+Zgq3Ji9v0NEW/0h/5WnXTHbKHS8ur/QnnVq2e7ePs0shCsWoCwgEhXYfMBFFU9
         81dzcWc7pUGAahGh6V5F/Fizal3yG/8CMThVMlBJks58Ihikqlwb22fm4kZzOL7A7EwJ
         ay+dFOyOZUzIbjxUNA8v2HKael9l4AotIK4k7W4/Nn8KC5bXQMT7xBJbZmFMvUeuLpki
         ZMU3mzOw90F16+k+ilGBpqRZKoN5UNNkLbMhR2LVS05GBhnvj3Sg76XWGBx9AP3yFMmc
         GhQsVlnQbEpF6cRcbruxR/P2wSo9pfQ7djBxlbhASFlaNhDNctyw8Sa/O4KiPJWw8VKH
         k2lA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id t21-20020ac865d5000000b00417aec1fb7bsi91973qto.353.2023.11.29.17.53.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 17:53:57 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-655-eZzJlT9vP4KqBpVQxdIy9A-1; Wed, 29 Nov 2023 20:53:55 -0500
X-MC-Unique: eZzJlT9vP4KqBpVQxdIy9A-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6397B85A58A
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 01:53:55 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 6072B492BE7; Thu, 30 Nov 2023 01:53:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59B6A492BE0
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 01:53:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 228C8811E7D
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 01:53:55 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-623-HhEAYSB1PJywY1kGFGxRLA-1; Wed,
 29 Nov 2023 20:53:53 -0500
X-MC-Unique: HhEAYSB1PJywY1kGFGxRLA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SgfPD4G5Xz44hX;
	Wed, 29 Nov 2023 20:53:52 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SgfPD3kjMzcbc; Wed, 29 Nov 2023 20:53:52 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SgfPD3RqFzcbP;
	Wed, 29 Nov 2023 20:53:52 -0500 (EST)
Date: Wed, 29 Nov 2023 20:53:52 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net>
Message-ID: <c9277002-d894-203e-511b-952f27c98048@panix.com>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
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

There is no keystroke for that.  You can turn that on in options or start
lynx with lynx -number_fields.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 29 Nov 2023, Karen Lewellen wrote:

> Hi folks,
> for those using links the chain, there is a command line option that turns on
> links are numbered.
> Can someone remind me of the keystroke?
> Thanks,
> Karen
>
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

