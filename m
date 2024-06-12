Return-Path: <blinux-list+bncBDLMFUWM64DRBMV2USZQMGQEPVYDU3Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id C52819049D2
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jun 2024 05:59:48 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-440608fe799sf37496671cf.3
        for <lists+blinux-list@lfdr.de>; Tue, 11 Jun 2024 20:59:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718164787; cv=pass;
        d=google.com; s=arc-20160816;
        b=MKxFUeix+sdg8lkT3WdIPQ1+FUQwBI6pBeBvD6ICr3gQ4Odv0kkoshbl7g7eCkTX0f
         L5LLSM7N8JaeO/MJB2Y2fdVrb/D63piOA2oyHx4BztLsKHN0QVP852yXO003QdxC1Nnu
         k6jza3qytzo7BM+vGDInn7HrJ9c7iZvHtsY6PFJZwzq423XAAaQHCET21A5KZfPOTsS3
         WrEjmncGU0dZ8LrycDySH0siwLEqA8eiGPFZDbrypiBYIfvvmLCHoxrI+r7Vjn2Kd9rF
         pMmWVdINk3m7Knh6DzYhwW9iCFkp/MhgzP1Cf9zcuYH/Fv8cvFjwKL4ydXa5Pk/h2XPP
         10xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:message-id
         :subject:date:mime-version:from:delivered-to;
        bh=Mv4qYrusw+R1kIiyQdT0cfZOgOUxSjgV8l7/QnKWtNk=;
        fh=H9OjhMHFZSGQ9k/XRv3rtJoAFgFAoqHa/xbJ4weVcIE=;
        b=h+eHBfgugCLkOIPx16gnSuJJ1xljYwNdv0xbi2xHnzc1IzswtteyfwGzk/j29WL0fU
         9SkqNjcDhHNpPbcgCeaspN7GutBjR18Yyl8mmzQ2IINLD+W2VBON/nFw9m2K6Dpicl7P
         qcXA1hdkRddj6uhnLeKKuBcu4BMXXgYbp1t+V2oddb1Mtr6fTgcC9XMh6f8EXJ/0JNCk
         5NMg+o3VLWS+8Tr+LAnBz5lvrmSPTVZCWTUeewEMtO2+y055FIJJ8NjHlsNcn3Ul6Tvu
         Uzyzorp4hTDBIXsQkO/lZ2nqELhbXUed/GQkGk2HLlr9mlWccxBr93HORcsHoYK1yipl
         eQeA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rmann0581@gmail.com designates 209.85.221.176 as permitted sender) smtp.mailfrom=rmann0581@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718164787; x=1718769587;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:message-id:subject:date:mime-version
         :from:delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Mv4qYrusw+R1kIiyQdT0cfZOgOUxSjgV8l7/QnKWtNk=;
        b=E8GkGuBPX1wBUQZfPm1oBi3Zaikkt3L+ZGsERYTrEbF3rC9iEMoZiOSavJ3w03qPgP
         KcvUBUgUKXk8lWvp6gPPI5KqY+5MGzUlM8irC+K6P5urmnNnm4ovc3lI+sgyIFJ8lU//
         Npiya6d9HaYtyDJgB4rxMHW9X5BvvXn1FJ4N6yuyrtC3ick+m4smbZSnAbA0cfUu2sVQ
         Yj2Qx1r+XeOFgwwSQ/aY3DrZeNVk3h2sqwcM36CAZD6SFWgWcswksSI715TFI3GScyYT
         zCN3D/Z6p6hsUmg7cwVhoVaFUFVM0ur62TGe/l5BdPwTQPuCKkTfjM2DJOGIERRfiXOb
         L8tw==
X-Forwarded-Encrypted: i=2; AJvYcCV/L/gNA5Fziv7VrFyS6lve2lJYMMg0bFeR9jJ6JMiPPwsl4YzJy9LeE/gFgM8jQrXA3TyYJ/HOO7Yfpn/DNGLb6yW/0fWFH8Vn
X-Gm-Message-State: AOJu0YwXpI41XlFqCIDHb5qlgHUHlz+lI6kQi5fJytDGcOK0qXwx/gKe
	iJ4W3ceZyR9AGKfd+o5QXDZ+7BqGrx1xQv/C693gjXEPYsbkxtCFyFYQPMq18/8=
X-Google-Smtp-Source: AGHT+IH4EMUsMKcyWM2Zqn6mzoAUz82nyTSF7hVAOy941DnnnkP8XrkC4P5rEVzA+2Ocf4uNcNZBwQ==
X-Received: by 2002:ac8:5f0b:0:b0:43a:ed55:f3a9 with SMTP id d75a77b69052e-4415ac4ff0emr7576471cf.30.1718164787010;
        Tue, 11 Jun 2024 20:59:47 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:4247:0:b0:43f:f989:1804 with SMTP id d75a77b69052e-440f54e09c4ls26913071cf.1.-pod-prod-02-us;
 Tue, 11 Jun 2024 20:59:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWWcbTh408C/HG+P63slf4iuPWfed6cN+9xF4Bu9uxQ9E6OLcRfDHK+4lHADgN3pe0uKy5evfXj0N6jKA6EEpoBS2TraGyqac4rGgSR
X-Received: by 2002:ac8:5d49:0:b0:441:5497:980f with SMTP id d75a77b69052e-4415aca6d2fmr9566621cf.56.1718164785727;
        Tue, 11 Jun 2024 20:59:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718164785; cv=none;
        d=google.com; s=arc-20160816;
        b=L222AEv5zglz4y+nX69/SXt/CnY58ZO7ADE1MnKtKIZfa3cpufmcCoRNo53fd4hsOf
         Kqc26wvEyAv0D6gBvd2W7a+KsfBv71cLCb9PxhY3DvIm4tHx6431GJhueE+3SnPKVjpn
         VzZMPGpkRg2TvJ0p6eGD047H83bgyrqiZug2XW6WvrwlxkMVxc2S/wxH/698x1wtzRiv
         aohRFl5jXvkMxJe+scF2GnqBS1WvXdXi82UM4/VShMnnqMXjaK2aCqapvcmhpmhNjJJn
         T8mqS8u7+xw20T+68819qjxd7FsRYIKRWcj4kPMtPUzevJdd1M3QlvI7RLr+IyHD2Yzl
         nNUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:message-id:subject:date:mime-version
         :from:delivered-to;
        bh=Pco5f6CN5bPw1sR7DjBdti3EAfVR5zWbFKb4SdgmzRI=;
        fh=uwFpAPE7cuwsfRs67Oh4vVwsiabbegG/m38cKguHnXk=;
        b=T81HXe7//uFSuMUfcjA8aLPYOmjQhK1rrK0v7M9yfjB35kkDRk6xrBxEdalIqZtGNd
         9pFSb0Lte1TesBo0+0n/PqJwKSclWoUKGWCp1A+EtKMfGzAByfS2Wx88oTJ/16pobZVn
         DvpylFgCq3MUxUNrqaZHV0mIE7KDpF3ofSIaM8S/FOOsFieKdHh4zok8bTBRpnTd4du6
         iQBl1TcJ+7myvn6muFEeB0IEkrl9Gjg1XZjJOaSGNWrjf5/Eo+yCDH4OpTwwqAUFZMmv
         XkjKgNQY0SNNYxsh6bpEUV2r6RJfYctyN3fFoVh0oLQsVyzA1dv8Wx6E9t6dfyucK5/M
         NvDQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rmann0581@gmail.com designates 209.85.221.176 as permitted sender) smtp.mailfrom=rmann0581@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4406e006f46si76748521cf.64.2024.06.11.20.59.45
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 20:59:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of rmann0581@gmail.com designates 209.85.221.176 as permitted sender) client-ip=209.85.221.176;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-55-ZMZwSOGFOBWJBeRJjW0gxw-1; Tue,
 11 Jun 2024 23:59:34 -0400
X-MC-Unique: ZMZwSOGFOBWJBeRJjW0gxw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A454319560AF
	for <blinux-list@gapps.redhat.com>; Wed, 12 Jun 2024 03:59:33 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5F5F5300021B; Wed, 12 Jun 2024 03:59:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5CEB030000C4
	for <blinux-list@redhat.com>; Wed, 12 Jun 2024 03:59:33 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D5051195608B
	for <blinux-list@redhat.com>; Wed, 12 Jun 2024 03:59:32 +0000 (UTC)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com
 [209.85.221.176]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-627-Gsxzf2szO1eZtID95bTNfQ-1; Tue, 11 Jun 2024 23:59:30 -0400
X-MC-Unique: Gsxzf2szO1eZtID95bTNfQ-1
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-4eb5eabea6bso1289361e0c.1
        for <blinux-list@redhat.com>; Tue, 11 Jun 2024 20:59:30 -0700 (PDT)
X-Received: by 2002:a05:6122:398c:b0:4e9:7f87:4c2b with SMTP id 71dfb90a1353d-4ed07aad148mr871058e0c.3.1718164769835;
        Tue, 11 Jun 2024 20:59:29 -0700 (PDT)
Received: from smtpclient.apple ([38.40.68.7])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-4ecfa92e8b7sm308637e0c.1.2024.06.11.20.59.29
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jun 2024 20:59:29 -0700 (PDT)
From: Ryan Mann <rmann0581@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 11 Jun 2024 23:59:16 -0400
Subject: VS Code, Emacs with Emacspeak or something else for Python programming?
Message-Id: <B1FF2032-3261-442A-9576-46C4CB3CCBEA@gmail.com>
To: Linux discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rmann0581@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rmann0581@gmail.com designates 209.85.221.176 as permitted sender) smtp.mailfrom=rmann0581@gmail.com
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

I=E2=80=99ve decided to experiment with Linux and accessibility again.  One=
 thing I do is play with Python.  Tonight, I was trying VS Code with Orca, =
but I found a problem.  I turned on the screen reader support in VS Code an=
d opened a Python file that I know has indentations in it.  When I up and d=
own arrow through the file, Orca does not tell me the indentations.  Is the=
re a way to get Orca to tell me this or should I use something else like Em=
acs with Emacspeak?

Ryan Mann
Certified Assistive Technology Instructional Specialist
rmann0581@gmail.com
386-383-5175

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

