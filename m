Return-Path: <blinux-list+bncBCRNHOFA7YJBB66Z56XAMGQESOQS44I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B72E8667A5
	for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 02:44:29 +0100 (CET)
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-60832a48684sf38769327b3.1
        for <lists+blinux-list@lfdr.de>; Sun, 25 Feb 2024 17:44:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708911868; cv=pass;
        d=google.com; s=arc-20160816;
        b=a3uJJd4h0sooS4MMwP9Q8HBohbpmcF8kTvSeRw0pTvM+GnghRi/0jtXzZfFWv0tNmz
         wCvdlFVKYecAPajaBliLUWTYsUr/u6ONU2eP3jsjWJNQXBcfBHP2hPyOGr2v8fNInQmg
         9WU48xD9NzRxlAqBxzkXSQTam961eLUqYG8fV/oXuuKiHhZfd4WE2cK4hlNRgIxeM74B
         sfF1E5wWv6NJ5Ih2EJiPORZZXrrMhhJ1CNr8LST5Uzx3gqH7U4gfsBWQKu17xoqWlZpt
         pFcRIRWJ4Co47kfNTfNACI5WNGzDN2IDI9Qa2lIggFcBrnAoWar4vcwaULiuYzxB9lGP
         lVig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:message-id
         :subject:date:mime-version:from:delivered-to;
        bh=xCMAsucYhtCg2F91erHM6bXlZMDsKayW22V4VnfGpoI=;
        fh=Ah/lvqkD+guLrVRLZRkLb+j5OQVKOus5kcwDqn6SZgI=;
        b=pLA11oHb1ORwNcPnIBQbwuL5GneiKKY9lu9cvBRaeq/IVeBephoZ0qyTZW77ZWTPos
         sbqGbjdH1JAQZQrlxurfKLzdaj3XMjwb00fpTMeAi9aCUHUHncNeUOHZEkXI29z9eBhV
         hUNEoB+m822WLC+aJMtMY+Kq2r+s68gIYRtjIk4F//1OU8TdFa/O0QNsrYw39MtRIuyS
         Da7CVFeLEgBsirssQ3Ct48Kto03C4SBzX862sgr5GpraHdgGk1FY62llAv02sz+vSjGh
         fLBocdv2xaxJP0lf0dcTj9L11XUhAFKwd26Y4JHQbnhDNGsk4+xOlx0Zd2SKgYB/SLsa
         UI9w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.161.45 as permitted sender) smtp.mailfrom=rdm@cfcl.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708911868; x=1709516668;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:message-id:subject:date:mime-version
         :from:delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xCMAsucYhtCg2F91erHM6bXlZMDsKayW22V4VnfGpoI=;
        b=HUO4qzjsuB2ymvpyFZ+wSq+nOBqK3JWCaUyNbt/BUn7YcqB8d8TooBLa9GNF6bkwW5
         PY7uPmHFKiuot7OpXuxkZd0zkjY5GkfQ6JXPDocpQb/3Uh7oU4spWn+pAkWmj5XR0We1
         BOXYuTKrmdOmNUgSXf6gFUPpGfZBnHqcgAYAWZRPTaaV4+ClnksBRhDc1M7c3rQRw4B6
         2cdeZ/Cu94Tx++Xmis3rr7h8SAIRy/PN1vwVVELxOFL431XAy4P5BmBQSfShcw6EYRIZ
         GR6Uv0LluoG4tHsa9hFrNMCv5GCO0D8fyxle60E5sYEHv8quGG5pncgUZWyVK5/8ZvyW
         Q5dw==
X-Forwarded-Encrypted: i=2; AJvYcCUmcXNCw/WtVMYieJPnXOuSNvD+F9pNmRwkMrIq7SKpIxjxAeuM8+zS6O2aPkVtB0Ay0c7BlqM8FvnoBQhOw2th2xHjHgKn86/8
X-Gm-Message-State: AOJu0YwS8WRAe8HkLYpiE1+qAe5TQOkcHpz3D0QUN1l6kH0OKHNWbTA9
	MuKxMMPaB+72HkpHV+jbmDhozPf3mwtmEPwQsEEVmucuLlYjvOzlxcCwUs0gk5w=
X-Google-Smtp-Source: AGHT+IEXLtJxkolMC1QQWqbk4DCAzQlp7KMzo03NS2F1h2PedJY04bVcxgV85kZAOPoDWp6u2jVJ9w==
X-Received: by 2002:a25:3dc4:0:b0:dc6:3a84:2aae with SMTP id k187-20020a253dc4000000b00dc63a842aaemr3492256yba.42.1708911868015;
        Sun, 25 Feb 2024 17:44:28 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5b8e:0:b0:42e:836d:6d11 with SMTP id a14-20020ac85b8e000000b0042e836d6d11ls683404qta.0.-pod-prod-02-us;
 Sun, 25 Feb 2024 17:44:27 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWLWtuP/1EVj/ksN1pBfecafuLJYz83FwPP4eqQlKTDfvmA4rPAnS7DEiDpzqq6WEOQXyFdbvdv7IMdcEss09eEnLjFfrRtR6IRCh7Z
X-Received: by 2002:a1f:c844:0:b0:4cb:56c5:5816 with SMTP id y65-20020a1fc844000000b004cb56c55816mr2181496vkf.12.1708911867307;
        Sun, 25 Feb 2024 17:44:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708911867; cv=none;
        d=google.com; s=arc-20160816;
        b=P/ISDIa03zfROiy4Y348e/supOT82IIhd42+xzFq/7ambxTO3hNWXyVi0Vx6u8z59Q
         rTlkc1nA4jqp1Fyr9mhqRDTJrl8jKm7wfZNe+HhDyYKWv9CoqOBZ2/6QDJc86ZcIn38M
         MGYKEOAMWujM7sdMQzqJ3hJCulD/j+AnI7FvLEM5pB/Xza0aRdCE7Z3l7ExHWU9Pbetx
         QME6YKDFEysRF0qfMWGuHVGXs+dEAexaet1/sSZITprODcs4NFbuPUVwhgDx7eMqAyiN
         KHIp0o67oxGSuGxrULpMXpuzpw2lmEMB+9sz3RU+Zxh2Jt8l3sLTAVWvKT67vNo8btHG
         6dLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:message-id:subject:date:mime-version
         :from:delivered-to;
        bh=iaaIP9z2EV7WhMQ3e+gx2Hs7pnjwXl736+1LJ8kzQvE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=VMvqeyGZUAlQkuZ1HGdYbsuoIFGjtmLINofAfF03ugNpfrZpr4OYm5ptfIiergqYE8
         lHlnPzTyE5JZJipv4JogRklod/a7Krxczujy/7AlAUk5K8W5fCMEEKGV53Bf+fPLkYUT
         vl75Zovt/ayp3ZLEcMP0mED6s7JGKn0LivkFHU45v6qIegpB55QHm1rOvRzmUrmeq1Bi
         Qw/zQafLLi0afVWU4T4F64cvLc6xtbHHSru/ub1v6WfoHs9BTjTI1L7VcsfSuC0/aTsZ
         gD96AWD4PtgyLM+k9xhrU13E5browlGaD4A+oZv5wPzgrEi7OLWGWrujukCpxfKm7Ql9
         /Fnw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.161.45 as permitted sender) smtp.mailfrom=rdm@cfcl.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id jr8-20020a0562142a8800b0068ff594ce75si3364567qvb.149.2024.02.25.17.44.27
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 17:44:27 -0800 (PST)
Received-SPF: pass (google.com: domain of rdm@cfcl.com designates 209.85.161.45 as permitted sender) client-ip=209.85.161.45;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-247-3h6jnlp2NgWmk-B7s1RPCw-1; Sun, 25 Feb 2024 20:44:26 -0500
X-MC-Unique: 3h6jnlp2NgWmk-B7s1RPCw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24A98185A781
	for <blinux-list@gapps.redhat.com>; Mon, 26 Feb 2024 01:44:10 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 20B70C185C4; Mon, 26 Feb 2024 01:44:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DCD53C185C0
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 01:44:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4C2FA84E36C
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 01:44:09 +0000 (UTC)
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com
 [209.85.161.45]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-195-CIOhSgaAOg6YJwQrzVQ3aA-1; Sun, 25 Feb 2024 20:44:07 -0500
X-MC-Unique: CIOhSgaAOg6YJwQrzVQ3aA-1
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5a089f333bdso259331eaf.3
        for <blinux-list@redhat.com>; Sun, 25 Feb 2024 17:44:07 -0800 (PST)
X-Received: by 2002:a05:6358:6495:b0:179:1a1:ca9b with SMTP id g21-20020a056358649500b0017901a1ca9bmr8746083rwh.24.1708911846609;
        Sun, 25 Feb 2024 17:44:06 -0800 (PST)
Received: from smtpclient.apple ([50.123.75.187])
        by smtp.gmail.com with ESMTPSA id x29-20020a056a00189d00b006e50e79f155sm1139045pfh.60.2024.02.25.17.44.05
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Feb 2024 17:44:06 -0800 (PST)
From: Rich Morin <rdm@cfcl.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
Date: Sun, 25 Feb 2024 17:43:55 -0800
Subject: archival social media for the blind?
Message-Id: <971136C7-7CB2-4BF6-9528-60C5255889FF@cfcl.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: cfcl.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rdm@cfcl.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rdm@cfcl.com designates 209.85.161.45 as permitted sender) smtp.mailfrom=rdm@cfcl.com
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

Reading the recent discussion of tools to convert docx files to text, I was=
 reminded of thoughts I've had about archival social media for the blind.  =
Of course, as a sighted person, my thoughts may well be ill-considered, but=
 I figure it can't hurt to ask for folks' reactions.

Basically, it seems odd to me that there aren't (AFAIK) any comprehensive f=
orums, let alone wikis, that serve the blind and visually disabled.  So, fo=
r example, Karen's question and Rudy's answer are very likely to be forgott=
en in fairly short order.  Of course, if a mailing list is archived and the=
n harvested by an LLM, the information might be preserved.  However, that's=
 more of a possibility than a certainty.

So, here's my question: What form(s) of social media might work well to rec=
ord and preserve the thoughts and discoveries of the blind and visually dis=
abled?  Is there already something that I simply don't know about?

-r

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

