Return-Path: <blinux-list+bncBDYPVTOXSQEBB7UZWKZQMGQETVXJ63I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A5A909254
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 20:33:35 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6b06c8269fcsf25209066d6.1
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 11:33:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718390015; cv=pass;
        d=google.com; s=arc-20160816;
        b=cMV5qwqyYXKzaCqPceYoxGhwIejyml5C0joHDL/f3/OIE3mChFm6NT3EAhetVp8cLI
         HzhCUQiWl/RVx23F982qrEuq/ovs5FNb8xGFcUU75FyyM62vhwPOIQfgvlETpY35H0Dr
         B+jjgJKtZcXT2aw0XrzeREcNIgbu9jyz9WmbIMa6A7w+gHv4kIBblCVbXrAba7PKnOhv
         dI9XOncvicwVY9xEkxooKUPy2sTPdn+/4lQWEx5amyp5e3k6hsuq/IEg4fovAXE56PXx
         0iFXzDzIe7F0Nx+wGDuFLo41IAL5f1tS751ljgdkDvzl55cf5H3AVsZypRzQfmjx331y
         1clw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=x0jE6mdgjmyRyM8a8ebZVGadaoAOq9WX4RHIEzkyZhU=;
        fh=zMdSqJaeSgUXDra8R0/4ZrcSqftv5wjy6eTRppLCiAo=;
        b=xgb39UK4q1hJCvl7KIB+LmnSsHKE5hVa38QQwkqd9sP0pmmeSRMzFLzxwL15Unp+57
         jIsZaqTdco9lrF8XLWfVYsl4gegg7ydqWbS5kgBCFhwcpcfw+1vcy95J3/jEczVQ2Ssk
         Qiv7SqbZWE19vX1ZigBMrROgw4uSPuaepRdzwTAPhFB1lXzmZdvVbROswXLHOZsHgN7+
         knBTEZQCUcOWTPEVVQLl3dfpqZDryMvzFr4qH4oxxPwdPt1+c/xJIIWBvXl0z/TD3nSV
         +uyCuyJDieE8aXHnmMr7fiNqorPhqXCtc//6HXmTc/8cCrmKed35qb298mRJvcw7nG3D
         quiw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718390015; x=1718994815;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x0jE6mdgjmyRyM8a8ebZVGadaoAOq9WX4RHIEzkyZhU=;
        b=g6NyFHbP86LuO/sLE7oNBElH7zohyJ8JgB3ja/snugSwX3XUHoKPFfJ0T8KgdaGlWU
         DYkb1v/nIxYzW1HmufwNQbq635EjcdpxU5D11OZt48hTyLhR0N6yDlnOJOJtNbSIw5fS
         C9+7gWLQuplbo4nKHTDf76jEyWSJfdsdrspzbV48qu+MTUSI+foemGAAkKUnqhtSqIF7
         kE2R3zgAHKKuDeQe7OMkylXxAhtbmyK5RXZMQFp+mCjKBCh9aYVFZPjIKi6Ez3InVr6Q
         yt51fM6FrT4O5uakLTs1erZVxIxVynoDG4tpusPAIJh8l1ElsVLzJIAugy6pnOwzIx+C
         XwXg==
X-Forwarded-Encrypted: i=2; AJvYcCWMiF+pMpkNTQFQ1D2oiPFcbDLyEQpUTMqLrZvyptzFDx9bE4YCM2YwFXQh7FkUgJN8Jl9qLd4kdXeCkjqrluDJHxKWtJLPRC+m
X-Gm-Message-State: AOJu0YxGBW0sYpYfWmYTxfrE6znQ8W7lTsBjH96IEu01qfYJ2xu2RsM2
	4uPpI6MU02Ly1W8Ue+o6675pA9cBl8TspLnejqE4ql7dvCut63uPfVZi6ts37DA=
X-Google-Smtp-Source: AGHT+IHUwZN3KwbJk8a7N2p9SdztGIyghQBRSxC+l4yQjrPyLsCERniM4Mmir4IVoUqOz26KH7yWqg==
X-Received: by 2002:a05:6214:238e:b0:6b2:b557:c551 with SMTP id 6a1803df08f44-6b2b557c6bemr25632406d6.27.1718390014359;
        Fri, 14 Jun 2024 11:33:34 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5544:b0:6b0:84a4:8f6d with SMTP id
 6a1803df08f44-6b2a338b716ls36430576d6.0.-pod-prod-02-us; Fri, 14 Jun 2024
 11:33:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUeSQoJIYEa3DiNSR/FrW9NhMkMxWHjK7jq/KftE+BRy2PNPv4lh0ddO3f7u8Uh0qcZT8zUIie/aTGEVVcPd7vVgO3B+Fznym7S9oAX
X-Received: by 2002:ad4:4525:0:b0:6b0:6619:20b7 with SMTP id 6a1803df08f44-6b2afc9b07bmr34036076d6.17.1718390013600;
        Fri, 14 Jun 2024 11:33:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718390013; cv=none;
        d=google.com; s=arc-20160816;
        b=jgjC8oVUxdgb4wVYP2DD0kMOrOQOWspKWTQyWebsoVdIIvfTIKeYCy0e+8kCY1HMVC
         +awF++jFCpaJLpWzkI1I93BGRyKzBIV4g+TqHCC31NQ6Kr59eGR9eqHxLDrgShQ8/Jpf
         0rRwsg5jlAohBjM+UiYtGXad0T/HCrcDnov4OXxekE/a5NEFFEWZ8MIuOSPAbFgk3LAK
         8uChUvgF5mWm+wDKQzg+aPcIu0CHRxYWt53ZEUASyv1K1VqeidGIjoqjA3nkrsUT6Ktu
         kwdA0yEoWTitwxafzPjeJF3v0RDURUasOHj1/2ENBh/gnFfKFuiP4Jt+ggUbfYVMD/1e
         zp7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=zOCLnRZ8n8R6S1e70CbDc39IFVIvmHOwl5mCleyXuI0=;
        fh=1AxjPQcxtlIhkMLAM0kPYF09a9fAE6hQ+5FcnLINsRA=;
        b=oYVamuYUW/OZn87542FKPsJFjKQknSob9JUuE7lmQTyhPgF7vsi55uhIV29gfy4ldP
         e+K2MVlJsZE9K3pgpyd2Ytc0Nnx5P/O30IDoKXr6izzqEgw8o9fhDrrZR5hCwLKXOA0H
         3oF8DuXO8xu1LTd8KLBUL9VYgb2VcY5SnjnMh9jGwKfOgcIOYlbZ1l+c9PR6+Zc6XVAp
         qmWFT4NKYOK5BqXQB26aU9qzH1fjXiwuNKE/youk7LBrqj6uohTcqSMWhi+EAha2X1Fg
         +43cH53GQaI7f3cXyJr5L4Q1cfQtfA88rW41mCrjvSR2rhcuJw9/1jIhQBfVfHox1exk
         MvRg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b2a5a17129si30218116d6.47.2024.06.14.11.33.33
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 11:33:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-639-4dv_FlgkP3SQm94GnuP6Fw-1; Fri,
 14 Jun 2024 14:33:32 -0400
X-MC-Unique: 4dv_FlgkP3SQm94GnuP6Fw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6913D19560BE
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 18:33:31 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5A7543000222; Fri, 14 Jun 2024 18:33:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 57E3F3000220
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:33:31 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CB4B819560B1
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:33:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-70-3Eskr19rOUmlN885Rhz28w-1; Fri,
 14 Jun 2024 14:33:27 -0400
X-MC-Unique: 3Eskr19rOUmlN885Rhz28w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4W17Fg0TKHzqJZ;
	Fri, 14 Jun 2024 14:33:27 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4W17Fg0GnSzcbc; Fri, 14 Jun 2024 14:33:27 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4W17Fg0CjVzcbV;
	Fri, 14 Jun 2024 14:33:27 -0400 (EDT)
Date: Fri, 14 Jun 2024 14:33:27 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Rudy Vener <salt@panix.com>, blinux-list@redhat.com
Subject: Re: What Happened to duckduckgo?
In-Reply-To: <1e59cb21-fbcf-bd00-24aa-3ac3c0364a2f@hubert-humphrey.com>
Message-ID: <ab2a608d-cd4e-b1b7-fd55-aadf93729ad4@panix.com>
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com> <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it> <2b2e74b2-5cdd-4dbf-961c-a13940eb8bb7@hubert-humphrey.com> <ZmyHH4DeAXMQzthQ@panix.com> <594ca1fa-85e1-e610-9902-a2049c0555ed@hubert-humphrey.com>
 <05ff5050-87b5-a355-80bc-d328a2bd0a8d@panix.com> <1e59cb21-fbcf-bd00-24aa-3ac3c0364a2f@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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

Here's something else my aliases for ddgr out of my .bash_aliases file:
export BROWSER=/usr/bin/lynx
alias ddg="ddgr --num=2 --nocolor --unsafe --url-handler=$BROWSER $1"

-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Fri, 14 Jun 2024, Chime Hart wrote:

> Great idea Jude, but its not there either. Well, actually I grabbed it on my
> laptop, so will need to fix the sources list on my main machine. Thank you
> all.
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

