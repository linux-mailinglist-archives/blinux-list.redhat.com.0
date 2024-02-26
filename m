Return-Path: <blinux-list+bncBCD3RKH4ZIBBBTGC6OXAMGQEPXL7ESQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 7604C868071
	for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 20:06:54 +0100 (CET)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-6e4a8690d9fsf533328a34.3
        for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 11:06:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708974413; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cl8f4PYwIH1LsOMCzwUnEZ9fLH8DnOcF0U5UjNlkA6J8HnQkmnRLX6qr0vUsJ9kPiY
         M3er90wahNN7ZKg02PrbK1W7SmoyU8OUhVLXANGLv/C4xsXDxkxSPIj8mNc8MJQc2I3v
         92DcgdCxbFInelmI6kyLJeGbvTNsjEvDwCHfeFnd7JC6CLYc7greS4Nl+wQAV1Mj4aph
         c7hT4NHJwn7BTyfObi15efzPtGIy0pZJHaW79iJtYOzd4rJU6Y56QccA1ATz6kOqnsfE
         XqotL8OJTVBEEGSHErI+gEk1XTDNVVECBWEXi8c3FI3WlLoKHs5T++Gs83B2iCAd6i7i
         08YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:subject:message-id:date:from:references
         :in-reply-to:mime-version:delivered-to;
        bh=j3J6pqjuMmfFFeHcd2OlKVHlod9A4xpPLQr4G6mdopY=;
        fh=n2CunFyXt4CcK0lO5NBJ9VwcKKQLRRuUkPEPwwN4+IE=;
        b=ONW4bCgMpInvDrUGXKwflEJFLmTf3zqxYYSAUnmTQGMyKxtKCd4pffhRP6/2x3lRgX
         IjEQqX7lgO9ptPCruKANtG7W3R0g96n8Topxb5P5aUQUnAR4NXBXmh2H4DkfGNaU1t63
         ZEoPF/xYWrxfcJo8audGdOuHMEp6OCqG+IytqVx+AkxuXYKK1QTXitOV8Il5SqXkdf2I
         WMFacIPuIqF0YkO2SUbO4oF5aC2f5Tm4kI5KZR4244Di/yX2APSELfGWQ+zKUrUSIWqF
         5hT1AkBhI3wC/ys0IANw3FcvVLDnwHCElXUgL2/3Fmb9G6XU2GG17F4lkxDk4LnMOGhd
         iUng==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.208.51 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708974413; x=1709579213;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:references:in-reply-to:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j3J6pqjuMmfFFeHcd2OlKVHlod9A4xpPLQr4G6mdopY=;
        b=uoztH0mbuf3s1muygDwtakq+9NSumxtKkrBJaR70YvR02bkwxtPhBpw/zvBsNhS2qN
         LjM4eENduNMnAbEapTbuokN5ny2mmTTdrSki5hRueirH5AS8xWv69E4Uw9MfsT0g0s3j
         wojwABhnmeAjFIsc/cGSl2i0w9+n4KT5wmx+cYQT+kLYHtdVQ/0Y+tbWzXC4Luo6qyd9
         MjVr6N9Zgm4mu59QHjSU4u/HEQ27wVNb74ZeDpn3896z9vLo68vG0JIc84/pe+si7yIP
         NdVA0RXxxq91TAPknFP2Ts1crvDUq7azE35L4gW+lB64YN/6YAIAj4sPmOJgONcYH3N7
         Aa2A==
X-Forwarded-Encrypted: i=2; AJvYcCVkLYIHrJqaKeJdS9ZjWgVKElKdSRD9re8I4i49tO4rOeeSyyMe3ePH/o6wYLOEoeQngJSGjMCk41NLeqnYfolXF8dcwBZQiCXu
X-Gm-Message-State: AOJu0YyD6q+0O7FE2xISdlCzNKNPd6wm6RT6tqEWGl87pxvYlqmHAGFj
	Auj7ofddGYpT4ivukPXHfsxQAlapZJBEArtvMfmGdsTrb9a3BV2MoqM+d/SvzqM=
X-Google-Smtp-Source: AGHT+IFGfO8pcoQoa5xKD8X7EDOYsjSAEJN6q1lWBS1Uqa2gI/f+shLYkJ1UMJ5ue6cGQ8vgI2lwPA==
X-Received: by 2002:a05:6830:1254:b0:6e1:7b0:fb99 with SMTP id s20-20020a056830125400b006e107b0fb99mr7410857otp.21.1708974413068;
        Mon, 26 Feb 2024 11:06:53 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:209:b0:42e:8125:6e52 with SMTP id
 b9-20020a05622a020900b0042e81256e52ls1782050qtx.2.-pod-prod-06-us; Mon, 26
 Feb 2024 11:06:52 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWTD8/P+8PEEw0LJe/Yj28WlX5OEqj1zgz0Zxi7PyPQbOUQdSXac9tKeNMlayNkLwBXL7HQiI0Ge+kQBjQssxZWYSHELWOZfeoryuEc
X-Received: by 2002:a37:e112:0:b0:787:aa51:56a0 with SMTP id c18-20020a37e112000000b00787aa5156a0mr232qkm.43.1708974412005;
        Mon, 26 Feb 2024 11:06:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708974411; cv=none;
        d=google.com; s=arc-20160816;
        b=InHU7OcVVrj6SoA80hLZfC69MSpy8i4YOWo0mK4Us4H3EJDferM72jTXKuGqvm/160
         0Tah4IqR4x3BATptNoAVZYue4sX5XVcjeKO0t+EH3jFEES2+QiewP6+GTXs6+t4F2D5U
         Q2ciqbzsIugmOJY7v18fqnWLhYMdrrs1OfpmjMu1TGnBH+k2GNXDSl0i15K+mw5VFpnY
         usg+cb/yvt8si6BLb8qSKr/eNFj2u1Fesb4kXXhiegHFd5WSp3JblkhrAMMK5BISNB6z
         uYsJvVk/RR2SThT/2SalU194OOSht9jhIeJz3YXrG55tQAwRTqPAxqyCxVhKgaGrslRk
         Hklg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :delivered-to;
        bh=/UTlqvf0OaLXHc5n+sWEW1vDjs6OByK0Gm67l2/Wk6E=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=KhvO7lDWDiD+6ZfqDUz65GhJcNMgzgzQuqIbnJEclU2CcXaYe/uVXsg2IRuZa3v4+d
         lLZC9pW6ZN4n7Xd1RV9ef1GotBnerg0bf30PagaKYBCSQn9dJo23sv8laZA3cEc+cfmM
         gcFq/YGHJzDXalUH1G8tcjtWu+wxmd0MNS+OyvnmWkOEZc/fqSQfB40FPYoLF5HXfh+m
         TdHsF4lq0G1Ig58q12aKii47ytdzHtUTc0z2BVUbTY1QVhsDw81hXmOOAgOA7YuAaoNM
         n4DYEz41kjlE2HEETaXikVV9K2fHaIlAS89qPurH7WrOHONwYyU3eg64ENLO2n743C9z
         9ocg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.208.51 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id y10-20020ae9f40a000000b00785da73ab98si5652357qkl.241.2024.02.26.11.06.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 11:06:51 -0800 (PST)
Received-SPF: pass (google.com: domain of mewtamer@gmail.com designates 209.85.208.51 as permitted sender) client-ip=209.85.208.51;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-534-vAqMfpP9O6eWzTkc-CAh7g-1; Mon, 26 Feb 2024 14:06:50 -0500
X-MC-Unique: vAqMfpP9O6eWzTkc-CAh7g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4C0B485A589
	for <blinux-list@gapps.redhat.com>; Mon, 26 Feb 2024 19:06:50 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 48F60C185C4; Mon, 26 Feb 2024 19:06:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F925C185C0
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 19:06:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2AA2D383CD83
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 19:06:49 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-516-qY-dtDI7N4SxOt63MNKcZA-1; Mon, 26 Feb 2024 14:06:47 -0500
X-MC-Unique: qY-dtDI7N4SxOt63MNKcZA-1
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-55a179f5fa1so4091887a12.0
        for <blinux-list@redhat.com>; Mon, 26 Feb 2024 11:06:46 -0800 (PST)
X-Received: by 2002:a17:906:694b:b0:a43:adc:7220 with SMTP id
 c11-20020a170906694b00b00a430adc7220mr3704641ejs.8.1708974405401; Mon, 26 Feb
 2024 11:06:45 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:7d85:b0:a43:3743:e534 with HTTP; Mon, 26 Feb 2024
 11:06:44 -0800 (PST)
In-Reply-To: <20240226100618.ydn7y7ay2py3esv6@sprite>
References: <971136C7-7CB2-4BF6-9528-60C5255889FF@cfcl.com>
 <Pine.LNX.4.64.2402252345480.900490@users.shellworld.net> <E1reXEO-000RgT-24@lapcust>
 <20240226100618.ydn7y7ay2py3esv6@sprite>
From: Jeffery Mewtamer <mewtamer@gmail.com>
Date: Mon, 26 Feb 2024 14:06:44 -0500
Message-ID: <CAO2sX30LnDznpE+VwT2P8ypMrNmNovw03+1+f139P1P574ZCrA@mail.gmail.com>
Subject: Re: archival social media for the blind?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mewtamer@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mewtamer@gmail.com designates 209.85.208.51 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
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

and if -h doesn't work with a given command --help usually does... I
also find piping to nano useful when I want a general overview of a
command, but the -h output is long.

[command] -h | nano -

| nano -

Is also useful for any other non-interactive command that produces
more output than is easily reviewed with screen review hotkeys.

Though, more to the original topic of this thread, I'm not sure if
there's any good way of archiving this stuff... but at the same time,
I'm not sure an archive would be all that useful. This is just my
experience, but 9 times out of 10, typing "How do I do x at the linux
command line" without the quotes into Firefox's address bar or
something similar will return a mainstream tutorial that doesn't need
any accessibility tweaks, and with how much Orca is constantly having
to adapt to every little change in every major desktop application
that runs under Linux, I'd have to question the value of searching an
archive that might have mostly outdated information instead of just
asking here, on the Orca mailing list, or on another blind linux users
list.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

