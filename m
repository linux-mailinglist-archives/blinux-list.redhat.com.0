Return-Path: <blinux-list+bncBCVPTHE7K4II5V6PWIDBUBHCVFJ6G@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id B34368CF766
	for <lists+blinux-list@lfdr.de>; Mon, 27 May 2024 04:10:23 +0200 (CEST)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7949746f564sf268788785a.1
        for <lists+blinux-list@lfdr.de>; Sun, 26 May 2024 19:10:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716775822; cv=pass;
        d=google.com; s=arc-20160816;
        b=ELgmCvh1i98wZVksfMq+/uQSVQUC6jmPCo3OOB2oFM0/BVe08A0Xr7W2mMF40guV+s
         P90iogibXSJrqKMv9OR9U0hAQ+aD4z6emNesDWucvM4rhzRd2ChXUfUM1OesFsshpE3z
         RCGUaS5rBU3tbWJ37Y2i2pfTOxGGHfpAsMAIoRPaFEMBRTT/Y1EWj2QtWChw+G9RBb98
         neMEuir2qQwi1B7KRO6/oFM7fWSKOX301zGPXQzkyoAH+i1Z+Mf07olpzaeqPgtDn8jX
         4P92eIsDMggVUQlGzvWGIfuEz/XDDImAa2ysVWj4XDx9aG38hF7t7h+iNT/N0icORODX
         iszA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=IQNPzX30eolUquKu+ZjRZiZL+54Mw+U4iolhUokHa6c=;
        fh=A6VhjYRyTxMo3TZjM+awA5nr5YItAIhmpOnqD8JxtSc=;
        b=Ilz/ER3d2dN04cFA0uwggTABUkww4ZTlfgGVGuWoqr5MTjuDhx2QfV4g87BFv0pWaw
         EBxjnE8IfUYLZ1r4M+n/wD1up1FqHvzD8GNXMaI8Fq4C4HsN8e1taC0eTL8vMnIoXGEr
         y7f9DkajlFKVAe3Qu3MVM+JnBIAGufEMVM2c0Bl+3UH3OGLjrkrf+vBFBUmpmACx5i6+
         GAiKpM8NUyDWjinEE2ROsG0FHH4pKr2GI+5ClmrwOe1K8B4KV9uh8igtC/o0DjRByGO9
         U9DW7Lnk1I0uIzuTMj80UhE6wDcwD/J23H3quXXwKjbPu+HxaKWqLp54WyLnJYT020YF
         K7DA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716775822; x=1717380622;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IQNPzX30eolUquKu+ZjRZiZL+54Mw+U4iolhUokHa6c=;
        b=cGwh38w1Ko88bq+didybKpjesAW2r0T4LeNjqiPOAj4VvHjOeerJUdQIwNoc+bKylf
         /O2Dk1MNrRozEHcawNpOaypE8EJSRqgVZt4o1saPv/GmPzROoY1xsEaJ9/6Ed8fZIJZc
         OTlp2yvYOt8iqREHeeDcz1ghhpwpzfU1psLKBXzz0iHNUesaPBDfoFWpsjdZ1TAbM+7x
         FMWKxg+Z/M28c0wnCYlesbd2+gHZSoG/8Ikab7JBl5bhEspqMcDfmxFWGZP7eBTLKMg8
         fIm1OIPE+jAwtEpjQj+7dEWBo6mFAKu/knRmDJ/DVgAz/bGiuPyYFbwDd3clubsZeo2R
         +7Qw==
X-Forwarded-Encrypted: i=2; AJvYcCWcrNiWX3gviBfOY3nAA6fdwKXNodnfYlQVm4f9Wh/ZfcZjun4G4shDmnOxAQ0FwFiHEKGuF9AfrUMPdkoo4oqvUJRO8HH8/u91
X-Gm-Message-State: AOJu0YyJCx+Y8xfk4NsWl7z5sBIzSw50doSZLkGXo4RYckDMuwXd66Xx
	5XHKVyQPeC82AUcCRv0Jt5sJFm7Z0S77fUBWZzR2hQSZEdNxdWXS8dnsSWIV88w=
X-Google-Smtp-Source: AGHT+IHE+PAo5FIZUIK3omriUjv7l2+a2G2stTYpGYB6WDg0xhJONzZYkc+No5RFf8GBYXo9vd6hHg==
X-Received: by 2002:a05:620a:f0b:b0:792:f3b0:9aa8 with SMTP id af79cd13be357-794ab0f86c2mr992356785a.56.1716775822306;
        Sun, 26 May 2024 19:10:22 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a86:b0:43a:c471:8fae with SMTP id
 d75a77b69052e-43faeffa4edls34989371cf.1.-pod-prod-09-us; Sun, 26 May 2024
 19:10:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV+5+uWfmwu4kRVIMDKg/S2Rm5ycxR8ca0Udxx0uK2I8iaDYJV+/X8ZEEd+wObytyKMu3eIMhFSjZcMRw0JO85j8kDo0C5QaZld5Drn
X-Received: by 2002:a05:6122:3692:b0:4ca:615e:1b61 with SMTP id 71dfb90a1353d-4e4f02cacfdmr8378310e0c.10.1716775821425;
        Sun, 26 May 2024 19:10:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716775821; cv=none;
        d=google.com; s=arc-20160816;
        b=XFq0XyB9IHH0FPYfV1/P+QswvtVUki5AA95teTl9Me7JI/1GieE1L2PRHvpu4h+q7P
         sxMzvjBFhh7d8rS8MZvv8wljkShFhSaBrPxxEi9Tbd8+p2SgBH5glFxG3fwXwV+OQiT8
         STkHl0Q/iwF7vuDef3wlEnyte0ULwIIf/GHEPeBnqtgagFtWg6CWZWEv7YcvbwevmF5e
         lxxVjG59BF13JOuvoh63a+uP312yztAsKaZR4DP5BhrkhvYwdYZomcauQvnO1w291H0r
         Be1607jkaH9McYiCeM8Vom27gQRM+DI+tyQQdlu3v+L7UKSqB+1ozTUT8GYxKdNdCrZk
         i/Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=IQNPzX30eolUquKu+ZjRZiZL+54Mw+U4iolhUokHa6c=;
        fh=EnmT/XM52Cw5dKgKwAcAwrWfgpvmbC8BORRziwvcwVE=;
        b=KPFfktZ3D0iiX5o/9WAazbbLMlDLetaXCcDezSL2JSAbnK1NAEfLnwoYhiAyTuTiFc
         7thgk9CTyMoYFdKBWi5bn9qAmCsL/HabCwDJplm1OeCzgXGnsVUaIDXnx0geMRfGz/t5
         74XjpEY/XI2JFrintz5Y8YwTFEazLGbPQAWsKfp6+lNNMqH2fXpQLQhf1V6m8DItcn+p
         RdcvW2r1o3CLZs3odEjRtc5uzz61V1dZzEIzGmgkD1h0N1uc6lxXtojNHyk70oZp61GJ
         Pt4Ss7AX6HjwZg0vziFme+l2jBySDChtkDMBG+sEP80dLYNjFjXqt6uvHnbElEP6lGnY
         VMHA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-794abd4d54bsi758047685a.583.2024.05.26.19.10.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 May 2024 19:10:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-194-Ylym6kvZMVqZlSGLJ8ZmKQ-1; Sun,
 26 May 2024 22:10:19 -0400
X-MC-Unique: Ylym6kvZMVqZlSGLJ8ZmKQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BB3251954196
	for <blinux-list@gapps.redhat.com>; Mon, 27 May 2024 02:10:18 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AA2AA3001D20; Mon, 27 May 2024 02:10:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A77A63001D1F
	for <blinux-list@redhat.com>; Mon, 27 May 2024 02:10:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1EA1919560A2
	for <blinux-list@redhat.com>; Mon, 27 May 2024 02:10:18 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-68-9MSmT6RNN9qs6zpzk-KcWQ-1; Sun,
 26 May 2024 22:10:15 -0400
X-MC-Unique: 9MSmT6RNN9qs6zpzk-KcWQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 197D64050A;
	Sun, 26 May 2024 22:10:15 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 5FDFC1001B3; Sun, 26 May 2024 22:10:14 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 5E91B10007F;
	Sun, 26 May 2024 22:10:14 -0400 (EDT)
Date: Sun, 26 May 2024 22:10:14 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Rudy Vener <salt@panix.com>
cc: blinux-list@redhat.com
Subject: Re: getting BARD 2.0  to work with lynx on Linux
In-Reply-To: <ZlPijW01gZgptZTU@panix.com>
Message-ID: <Pine.LNX.4.64.2405262206320.2441188@users.shellworld.net>
References: <ZlPijW01gZgptZTU@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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

Most interesting Rudy.
I wonder if there is an options menu  choice for this?
Personally,  very personally, I am profoundly   disturbs by the patron 
double standard.
Bard users get to keep library books indefinitely.  Those who prefer, or 
require physical cartridges  must return that same content..for a 
publicly funded library.
How is that equal?
Karen



On Sun, 26 May 2024, Rudy Vener wrote:

> After testing the new BARD 2.0 interface on my Linux system (slint v 15.0)  using lynx, I
> had a few bad hours when access was denied with a cookie error message.
>
> I finally got BARD 2.0 interface to work with lynx, but had
> to change the cookie version to do so.
>
>
> To save others future anguish, here's what I did.
>
> 1. cp /etc/lynx.cfg to ~/.config/lynx.cfg
> 2. vi ~/.config/lynx.cfg
>  copy the line:
> #COOKIE_VERSION:RFC-6265
> and edit it to:
> COOKIE_VERSION:RFC-2965
> 3. In a script file you can name bard or whatever suits your fancy, call lynx as follows:
> lynx -cfg=~/.config/lynx.cfg  https://nlsbard.loc.gov
>
> At some point BARD might fix their cookies to work with the default cookie version. Then again, they might not.
>
> -- 
> Rudy Vener
> Website: http://www.rudyvener.com
> Check out my latest story: Dwindling at http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

