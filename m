Return-Path: <blinux-list+bncBCWIB27NVECBBEPC76XAMGQEGNDZDPA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id BED5B86BF20
	for <lists+blinux-list@lfdr.de>; Thu, 29 Feb 2024 03:50:58 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-42ebcb1c77fsf676711cf.2
        for <lists+blinux-list@lfdr.de>; Wed, 28 Feb 2024 18:50:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709175057; cv=pass;
        d=google.com; s=arc-20160816;
        b=Js9hj6u8EZ5ecJC0SsvPYykWlqGLJtXyMxmForH1D6cJtOTBDYplbcfmfXe7Bs4Rcx
         wzsnZyZZBGYIMtHpO6C4NVDy2u5NrGuIdNM3Q1wrwcw1Lqv2nZB9SKhjLiZRvf287/QU
         kBABksB4Kr7dnNcbH66KusSdJVL5bWovTThyzjVRPUF2RHDM8ZtrL7LZ8X78o5XVaqMg
         tR9KGOJGhf24WaaA3hXAU/AY9XWDE5KfU0xu6VM6CdqGcYmLR9Dq48j5yzbvEr0kZzLw
         mVKfRJE4xBmbfadvMaO2NdUhzEfTcwyQphxnF5fYsxd10dwrWyqu/HGNkEWrekQyLF55
         PiBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :delivered-to;
        bh=5pJEqEq/ATYd0rWzGQoUvmKP0mrvdsmkh4xqcV0zLyo=;
        fh=/ByDuKDdebWf4lLi4HCVKs744qDCSqdv4a/FI/RBVOI=;
        b=bXfEywlvKnLT2Ua//F/NMuaVAV0d2/NYSFgrzwY+DiWnFBHOjfKgbbInzONg21grAF
         /OYT+YEoPYGIqBpKlJ7MtLXgtQuNmxSsFzYHDoW1aDB8UUfFJKGpOcAL6GGvPQn6ib49
         tTiucCsIBfs3Ea9kH7GlLFupchx3zAoOCdQlWPP8RmVzk8rkfDRfuZ8YLzJNqn/b9lgX
         IHgyHTbtrxkIyl0k65H9FmPzUBBdEDqe0tqrxV9ZwzNOVHBCXp8Hf5Cd5BABHCgxn3XB
         Hu6RUm7Oa0LfW9aFI3vi9s2/MJQZYJBcuZXS0H6rfhdntx/j350cQcf0gyW4tKtw8yHF
         zWAw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709175057; x=1709779857;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5pJEqEq/ATYd0rWzGQoUvmKP0mrvdsmkh4xqcV0zLyo=;
        b=J4It9r9I0Gg1F4PsVRHzPXhYKaaMZbvmk/xrS5zImqtj1v6oC/qp154Cum+Wy/uezG
         G+qjbUoJXoxmkFMFBWI31yBpwTDvu7cFlLKcua47OaL+iF0T3m3iUEezOEjFvJrIjONd
         I66vebNU/P8pLaxVm256hUqS2b9qnGfbFDVwm5VTFPvPj8oEyEgCfRyVw6tbK4kPa4Bw
         +smc95UGN84jQqHg6oHxLoJrb2PWm189M8MSudrMnZ4DwG47FJPkvrwc/cVImqTIOQJ9
         dCbUsTqLiskPzlVFsXLxiLU6qEUFyVcUkKYztANPAffDBFa8skJIQ20tGxPDprQ9TU32
         e28A==
X-Forwarded-Encrypted: i=2; AJvYcCUeYNwS/yzo+0ja6fSaRyIkFHoNwDOmBWGFBBcXLcjzeo1XmvIO8BNRSH4VCMC7kqMFnNc7e6zfTjqhL4eGqA2mwdWFC6JE/z0s
X-Gm-Message-State: AOJu0YzNgToXBcOkppWSZTW00AbDpko8qWR4X0eCv4tz7DaXKrMIzzvj
	8nkavmnauyj1jOKKNYC1KEnF9YfqLbBsxmc5kpZeGDBByfkzuTfGn9df6xuFfkA=
X-Google-Smtp-Source: AGHT+IFwX3tfEvE9gkaOTIq55Wqy4PW6baDtHfWqE4MNLC0BzKbUGc/H9mqljvpCeBz67SJ8Va55vQ==
X-Received: by 2002:a05:622a:449:b0:42e:8ebd:58b with SMTP id o9-20020a05622a044900b0042e8ebd058bmr1070191qtx.27.1709175057550;
        Wed, 28 Feb 2024 18:50:57 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7e8d:0:b0:42e:6bae:e106 with SMTP id w13-20020ac87e8d000000b0042e6baee106ls588676qtj.1.-pod-prod-08-us;
 Wed, 28 Feb 2024 18:50:56 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXzXBZdCITVL1EmcBQXbCJzIq2oo5GGvwejF+xXdqj2GfBEdp+eTihFh7hJs+BNLWz2DYzs/qYWDOVyAv+QUkDrjMJkU9UqfA+v8jNq
X-Received: by 2002:a05:620a:2716:b0:787:d55d:bcbc with SMTP id b22-20020a05620a271600b00787d55dbcbcmr1224053qkp.11.1709175056770;
        Wed, 28 Feb 2024 18:50:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709175056; cv=none;
        d=google.com; s=arc-20160816;
        b=E2I2ei73ISwFAr410HyAaw26vEbsAaCHg2ajl7DE44hakLW2UUkCt8GjhULlLPfuGS
         xT60I7gSI8BuJWgO2s3Jq+GIFwU4WzURLvofmrWCpyuR4jo3eqq4S1COi6XMjPsTZPoH
         T3OYzb848kngi9m6OpsXn4f2yU2uMcqgq6yRO4dwTaYeUYyLDO51pdO4rjkfltQrvy8V
         CAdUar/AqDUXbjbvAoGh29R9hQJg/e3efSDKBVDlbdMzFVzSkMmXeqSbrdmrVQ23TYMx
         XcOjwCpXiBbI6n8L4HQUujsLnI3rFO3X+B3Zhl0DiAQW6T3UMULBkuWOC7ubilRLj6oY
         GeHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:delivered-to;
        bh=hoDfEVf2YDSKR7tYGPGGeqN8X7r8DQz65mkGfih8aYI=;
        fh=eFiuhkSo8qJAKy2KgomfmVyZlD5KBzBHjsxyrojhpRY=;
        b=h8gGp7McKDQOxKZjsF3MX4/GIdjnAwEjs1KqacWeJVSW8IBN8orAML3MwnghcxRabu
         AliX+ZLodWgV42U9k8p///EO19IVf0vAbnnoZ9yXdhFRv2B+BgneN5Sg/cSJzA7T+L/9
         qsoTpuieO/Wh9gMwLQqdD2Jg+Bmu1O5dceDo6ICRfXSLSPvswQNSCKEyuR465liHy/Fg
         Ge8OGt4eHsPRll0Oi96gDsLF4vonxbQUukJPnd6JxJVimAG4ZceKJX0xoZuxhnUDxIHb
         9UJLBwhIEy3ABzlT8AiKNMcEFrlYcsivdYsjPxrvjqgfFX3yjgvDavUoZsDFlE535RRi
         0NXg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id u19-20020a05620a121300b007872a3c1871si524485qkj.437.2024.02.28.18.50.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 18:50:56 -0800 (PST)
Received-SPF: pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) client-ip=66.228.34.147;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-367-IYQ8d59OPxmUFc_iyIC4nw-1; Wed,
 28 Feb 2024 21:50:55 -0500
X-MC-Unique: IYQ8d59OPxmUFc_iyIC4nw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E0A4629ABA24
	for <blinux-list@gapps.redhat.com>; Thu, 29 Feb 2024 02:50:54 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id DD4C9492BC7; Thu, 29 Feb 2024 02:50:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A4565492BC6
	for <blinux-list@redhat.com>; Thu, 29 Feb 2024 02:50:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 47FF01C05AC2
	for <blinux-list@redhat.com>; Thu, 29 Feb 2024 02:50:54 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-392-RkuSBMQYOa-X7te-5wiy0w-1; Wed,
 28 Feb 2024 21:50:52 -0500
X-MC-Unique: RkuSBMQYOa-X7te-5wiy0w-1
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 0E429FA0D2;
	Wed, 28 Feb 2024 21:50:51 -0500 (EST)
Received: (from janina@localhost)
	by opera.rednote.net (8.17.2/8.16.1/Submit) id 41T2ooiU240100;
	Wed, 28 Feb 2024 21:50:50 -0500
Date: Wed, 28 Feb 2024 21:50:50 -0500
From: "'Janina Sajka' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: blinux-list@redhat.com
Subject: Re: pandoc and the docs format?
Message-ID: <Zd_xCtxkmM0ebrJk@rednote.net>
References: <Pine.LNX.4.64.2402251934330.897574@users.shellworld.net>
 <Zd9CjhZah67fJKZQ@rednote.net>
 <Pine.LNX.4.64.2402282142580.952223@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2402282142580.952223@users.shellworld.net>
X-Operating-System: Linux opera.rednote.net 6.7.5-200.fc39.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: rednote.net
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: janina@rednote.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
X-Original-From: Janina Sajka <janina@rednote.net>
Reply-To: Janina Sajka <janina@rednote.net>
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

Frankly, I've never tried. But I would doubt it because going from text
to any kind of Word is going from a data poor file format to a data rich
file format. There's no pipeline for rich data. However, it might work
minimally, i.e. you'll get a Word file with the same level of richness
as the text.

You've got nothing to lose from trying with these kinds of questions.
Your source file isn't affected in any way, so there's literally nothing
to lose for trying.

Janina

Karen Lewellen writes:
> the pandoc -i  option lets me skip the html  need since it goes directly to
> text.
> Does the process work in reverse?
> lets say I want to create a .txt file, then convert it to docx?
> Just curious.
> Karen
> 
> 
> 
> On Wed, 28 Feb 2024, 'Janina Sajka' via blinux-list@redhat.com wrote:
> 
> > Try a command like:
> > 
> > pandoc -i file.docx -o file.html
> > 
> > 
> > Best,
> > Janina
> > 
> > 
> > 
> > Karen Lewellen writes:
> > > Hi All,
> > > We have pandoc installed here at shellworld, with my using it most often to
> > > convert epub files into html..then using lynx to make those  text files.
> > > I have a d. o. c. x. file however.
> > > previously I would use basic gmail to convert these, but that door is closed
> > > now.
> > > Will pandoc change  these into html?
> > > Because the format if not actually a word . doc file, antiword will not
> > > convert them.
> > > Ideas?
> > > Thanks,
> > > Kare
> > > 
> > 
> > -- 
> > 
> > Janina Sajka (she/her/hers)
> > Accessibility Consultant https://linkedin.com/in/jsajka
> > 
> > The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> > Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> > 
> > Linux Foundation Fellow
> > https://www.linuxfoundation.org/board-of-directors-2/
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> > 
> > 

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

