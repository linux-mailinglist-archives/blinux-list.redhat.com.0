Return-Path: <blinux-list+bncBDEZTZFXXAGRBZVBWWVAMGQEL2Y5NRI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B72D7E73AA
	for <lists+blinux-list@lfdr.de>; Thu,  9 Nov 2023 22:36:40 +0100 (CET)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-49e22068ec1sf454069e0c.0
        for <lists+blinux-list@lfdr.de>; Thu, 09 Nov 2023 13:36:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1699565799; cv=pass;
        d=google.com; s=arc-20160816;
        b=UZhEFPoYw8qf3Idm+r76srimBsyzauMF4unCTQHwMdqrmWQv0YoaJuPYfBToZ6UV7Q
         r95aFosZcd6HRyfs6XMhj5XYtgyl+3cGAl2ZcQJkfEV4XIqJljtecSPvKX0ce5dg2QPH
         4y6eyA8C0Q5WwToXlZ6hNzAvui2vwiioXlVkLexmGyIo5Shvnkz5LCFSUokHQm/fuaTO
         Yomdf5YWmAMw0UESXkdEY40zUu6sy+MQVDnvDVeCPxh0BJ7IYwQVYT+lJhGfeJuDvOxP
         09R6hnIOBDa6mvRZ9i84CPmTQr/lER9tg9fSxVpwkXcFVGJNafgVnfmHqAa14l8/sMb6
         zd+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:reply-to:from:date:delivered-to;
        bh=rCCj4K5PMLk396tcXVOydC8hhx5Ma0GAVWiEjqYWG34=;
        fh=rvrY8UTNVFUJTLHVvjgK0D+g4+C2hSg5OWyxxuMADGQ=;
        b=z8fsTYF/OYZgXkVvAp0K2gy0Jxr43FxCLqDqr6L5pQwmRByCrKhr0ztGV8SYVXe0oo
         MKRda02CGKbZQ4CH76LN5QtueN0D6ycHNE6DqnDKPDB48b1e+JZNWo3AyXH8e+Ikt3TA
         BZbGWOmgRv736MQDYj8ZWL+MY1VBpoA0h258owB58QUfOaqVmS63lwaGTwm4jL18p0lP
         omed8OFT1SRNXlnWJWDgEHjshciFx3H4eUt/hOP2gK8TCvfCTsNv8zTfVnZzU6NGUAVP
         +njN1fFEQt3BpWVxkC2bX2jfk7LKgNjCFRqJo0HdjHjXnRt2C399Ymmyr9epOWu2sfUf
         rC9A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kd7cyu@gmail.com designates 209.85.216.50 as permitted sender) smtp.mailfrom=kd7cyu@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699565799; x=1700170599;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:reply-to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rCCj4K5PMLk396tcXVOydC8hhx5Ma0GAVWiEjqYWG34=;
        b=Kz7kMwynB8KwCLdtrtD8iGz/UEytOfgG2buAucxoI7AlETVheCYnaan6bcbxKjasNi
         Ls45ofLk3giF++RlvxwUizX4nnTFdg2xUQZdHxgyf9cHpm87JMhkwLuXjUiIyWnRlcH8
         DiZRjr08CqbRLcsFlYKsw5Uv7bnS6RXWxD1GMY9xXGZTgMK6sm/GuS/uGKcetXWHs/IX
         NiXgkqkeUXPMZHErge8pF+oY7J/T0GsmO6CJc3sEnA/99XGE8sEQWmzYqcha8o+tnMNG
         1pBrVhxn9Cu56DUMMofiog9BkN9THCtpwJ6ITRqprDLtCOL4Dm/+lhG86EQc3SbucHfA
         Uqdw==
X-Gm-Message-State: AOJu0Yyst6W12pOuhl2XHpr9juZIis79xYMvR2O2oXdbLrukzLkQl8Hj
	1V4uvwIOMJ/Pfkb8pOj5MymO6w==
X-Google-Smtp-Source: AGHT+IENHDY/H2aWRLDWdA3kLHtixk/A/bEEXmQ7XmgUdra9oXHQA5fbccqgBKqqkkQtwJ1fhICKOw==
X-Received: by 2002:a05:6122:a0c:b0:4ac:1269:e425 with SMTP id 12-20020a0561220a0c00b004ac1269e425mr2981937vkn.0.1699565798475;
        Thu, 09 Nov 2023 13:36:38 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:d68d:0:b0:66d:9d16:5a4c with SMTP id k13-20020a0cd68d000000b0066d9d165a4cls641490qvi.1.-pod-prod-03-us;
 Thu, 09 Nov 2023 13:36:37 -0800 (PST)
X-Received: by 2002:a05:6214:e47:b0:677:864d:c72 with SMTP id o7-20020a0562140e4700b00677864d0c72mr5476913qvc.26.1699565797756;
        Thu, 09 Nov 2023 13:36:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699565797; cv=none;
        d=google.com; s=arc-20160816;
        b=c2WBxpKGs8oD/SdsFiw7G262cwk+zeiF0n+cw9wo/RbEeJqm7tE6uKJ5taHgGnF2yC
         vcMVSRPib88LTOHEVS74Bvct9WaDrnWh/HDdYtFn+xqW+N4383Fy0vrAemwklKkbCW8C
         hOBUeUXf9ZSzxYKU/Cr4mgy1yXHtUuieR4Lvu2TFt43RvBnXeNJdNKbWL1NQz/NW8RNh
         P32GFJV4NQkheqoGLrwcPjyIj92hKdEdiBfQpu9+fe29ivtUAQwxtCeASf1rtK8+2dZt
         SIKgAiMr6VVupVWYN3ac58p5R7z4frswYn36uElqOEyYdii3cscY/qWwV6zIQprqADy5
         FRHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to
         :reply-to:from:date:delivered-to;
        bh=XsywGBr7CSRt+KBCki+tp7z5XGSMVFJPamzykAu9u/M=;
        fh=rvrY8UTNVFUJTLHVvjgK0D+g4+C2hSg5OWyxxuMADGQ=;
        b=G1/NDRzMRMqhWxm1PlSA5OcVHlALgvxy3RDcta3uVhv/zwZRhnvMV1G+qZwkzFwB4y
         7wIdptkawQlHIbs9a8k0AbRD9JKGnf0V4A/nOf3ydxHF+ZgfhqylRgn5AmEDHiJh7tRk
         E5gEP4TWcDmmjFkNAaD3QCA7orftAZ05Jy/4tTogaf3hw8Sy/mja3JyKdGcRWVCNqTQ/
         5AZt02X6gnQzsPB2M6h3dlBHMB4l403CH0YM+QvK4jMQZTJcF28pnXvBcViJtCl9QGBR
         cy517mkNvNlyGJMxHLGQf5pniziAlA4vJr9p99VvpXA+8VHUoG1gSYQrtN8kIqOYmTux
         CnsQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kd7cyu@gmail.com designates 209.85.216.50 as permitted sender) smtp.mailfrom=kd7cyu@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id o11-20020a0ceccb000000b0066d1fcca1b7si3625506qvq.90.2023.11.09.13.36.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 13:36:37 -0800 (PST)
Received-SPF: pass (google.com: domain of kd7cyu@gmail.com designates 209.85.216.50 as permitted sender) client-ip=209.85.216.50;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-167-KdwmMnDxNF2bahE2LHWkjw-1; Thu, 09 Nov 2023 16:36:36 -0500
X-MC-Unique: KdwmMnDxNF2bahE2LHWkjw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 336E48371C3
	for <blinux-list@gapps.redhat.com>; Thu,  9 Nov 2023 21:36:36 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2E82840C6EBB; Thu,  9 Nov 2023 21:36:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2755640C6EB9
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 21:36:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0721285A58A
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 21:36:36 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-453-JCw46qGEMiyYc8-N5nQstQ-1; Thu, 09 Nov 2023 16:36:34 -0500
X-MC-Unique: JCw46qGEMiyYc8-N5nQstQ-1
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2802e5ae23bso1259175a91.2
        for <blinux-list@redhat.com>; Thu, 09 Nov 2023 13:36:33 -0800 (PST)
X-Received: by 2002:a17:90b:3e83:b0:280:94e8:99f4 with SMTP id rj3-20020a17090b3e8300b0028094e899f4mr2914372pjb.46.1699565792947;
        Thu, 09 Nov 2023 13:36:32 -0800 (PST)
Received: from precision-M2800.hitronhub.home (c-208-53-98-192.customer.broadstripe.net. [208.53.98.192])
        by smtp.gmail.com with ESMTPSA id h8-20020a17090a050800b002630c9d78aasm266591pjh.5.2023.11.09.13.36.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 13:36:32 -0800 (PST)
Date: Thu, 9 Nov 2023 13:36:32 -0800 (PST)
From: Tom Masterson <kd7cyu@gmail.com>
Reply-To: kd7cyu@gmail.com
To: Karen Lewellen <klewellen@shellworld.net>
cc: Chime Hart <chime@hubert-humphrey.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: insuring alpine's setup menu speaks?
In-Reply-To: <Pine.LNX.4.64.2311091618110.3313276@users.shellworld.net>
Message-ID: <edfe7006-41f0-a034-4529-e269196556b1@gmail.com>
References: <Pine.LNX.4.64.2311091532130.3312735@users.shellworld.net> <914d2b89-e0fa-7eb1-bcac-fb51fd255c59@hubert-humphrey.com> <Pine.LNX.4.64.2311091602230.3313038@users.shellworld.net> <Pine.LNX.4.64.2311091618110.3313276@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kd7cyu@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kd7cyu@gmail.com designates 209.85.216.50 as permitted sender) smtp.mailfrom=kd7cyu@gmail.com
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

Lpine uses the same settings as pine.  In fact myu alpine settings file is 
called .pinerc so if you can a working pine settings file you can use it 
for alpine.

I can't help much with speech as I only use braille at the console but I 
use alpine as my main email client.  If you would like I can send you a 
copy of my .pinerc with personal information removed.

Tom


On Thu, 9 Nov 2023, Karen Lewellen wrote:

> Hi once more.
> Back to the speech factor.
> There are only three cursor related options in the config menu.
> One is control k cuts from cursor.
> one is force arrow cursor
> and last is show cursor.
> I did try the force arrow cursor, did not address what I seek.
> as an example, you are on  a feature, wishing that current line to be spoken. 
> when performing the associated keystroke for your screen reading program of 
> choice though you get silence.
> That is what I wish to correct, that alpine speaks where my  current line, i. 
> e. where my cursor key is sitting.
> does that help?
> Kare
>
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

