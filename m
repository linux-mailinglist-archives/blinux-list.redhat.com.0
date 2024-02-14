Return-Path: <blinux-list+bncBDYPVTOXSQEBBOXQWGXAMGQEDYW7AKI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB198543F8
	for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 09:22:19 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6800714a149sf112727386d6.0
        for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 00:22:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707898938; cv=pass;
        d=google.com; s=arc-20160816;
        b=KOQdd4lWeaKMWzlxbKa5fRw+HkY4FKequFvtLMSF/zREZ7hc8x2fzUPighrEJudILW
         9zw2Sx6RqPXkcK7q0Xtg2KGHkZPkLzqxKaxbZZK5VV47ypaPKVE39pDi120NKlr67aT2
         b/uRu6icuROqv28HjcQfXcOe4J9IajFWqpE9N5IEjnIwC5JlqlHdukHkq9aIhR9xtuec
         Q26CSOBJXrv9ib0AljV5FkujOPtwZueNlc0Z5OfCRxVzdOd4BSDooAl++hDUMCsJKASs
         Ofa+AXXv9QrDBy8teg8WZ5JWFcdL7evPSe+wN1QUHnVHVxoMreJOanMwYj7gM0i2T3Ka
         Q5Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=4AjhzGWHw0e/jaI1Nuv5tw5rAiin+rn35fc1zOWpux0=;
        fh=grGwL3RpqKIxPChMIJZBdYKgia4rjkto1orMHUwjmVA=;
        b=iMz6PEvbD/tT6UYmEmsZ5KnzDmkV8XhRMU6V5pF10mMpM8U/cGMW85d96OgAk/CALr
         ZWjVS4iVM8q1NzMtfvkI9mnfQ2+Hp7iTb2n83OfIlHKZPb7QUqrpVEvli23ouigZdZYs
         VF2LDd40lfyGxCRp5EOhTqDnYbSGvM7EacjthBkH5wRYX10VpV9Vd9z428KOZHW/31MT
         oWx6Ri6uyN6sYQfFd/yEj6ms5dWh0GoefS1An9CUSdjOdesgPOd3YAjEwroSCFd01Kpd
         5zLk8nKevTk0Ln5MshbEqOmgaiIxg/ajUlRBCmCvSiBQcuNWlH+iumrF5MaIRFfheh63
         tJqQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707898938; x=1708503738;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4AjhzGWHw0e/jaI1Nuv5tw5rAiin+rn35fc1zOWpux0=;
        b=QdnXXrdJd93gZZZBufyjhwJNMYcXBC7sHsRvwxlzaoSiT40XZ3F3eAxZMeQmC70WzR
         BVVnJZSV6poAp6My3eY7lFumXmPs01OeUmSeemLVETCiqIhtUJBOg0prn1HPojzxlvM3
         EuPWpCa5kdaduFBTslNwpeAQLYW4p7Oq9r6jZbiuuWwZ0+RYgjfiYPBb2DwTBO4ofk3J
         e1Ut7WDp8c6jYWxkv3TBj5r2IX5ahiu86XcovlkCXHAEIaCLSSRRvZuEd1Z1D3WB+0Gn
         otqYIbSwQbm/rv/7yd/czwwsw31LyJVktL8rY11XFtTtqBCkRNNLeNGFxSbkL8akX+bl
         k+WA==
X-Forwarded-Encrypted: i=2; AJvYcCUY3nAVkbP5nHn3r4HurjyZH30GFLmfsFwMbIKAnBTaOkhHmjwO1dCScyVWm2X4+9rq5FOUi9bYWW+RUHHb2fZ0C6oR6ubhM2kD
X-Gm-Message-State: AOJu0YyHeTIaDtqNP6CMKjKoBCqA9CDZQkG9wIO3ElJv4z7xoJWTHyap
	7IrKAthQ2YX2IQOUmYt4o/FYvHIE2Gj9XgN2kbyBtozfoubx4yvTbmLjKiu3q/0=
X-Google-Smtp-Source: AGHT+IFNQBiBGXWrUezWoD/KOcza+QaZBhZoR4AQhGXQaFYX6MK3uLul9zWNoxdRrHIl+a9NhcG8Cg==
X-Received: by 2002:a0c:e302:0:b0:68e:e764:54f8 with SMTP id s2-20020a0ce302000000b0068ee76454f8mr1915727qvl.38.1707898938176;
        Wed, 14 Feb 2024 00:22:18 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:242f:b0:68e:fcd8:6fcf with SMTP id
 gy15-20020a056214242f00b0068efcd86fcfls936907qvb.1.-pod-prod-09-us; Wed, 14
 Feb 2024 00:22:17 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXC7NgPchqbnxl7WWDW0r4wM+Wd8Oz+ju8emBFkNbCsJS1WroVaJgO3wHYSF9p7NIdEB+wDjdkJ97Aikgj6SUrLKEpF9xeo6bxZxcxa
X-Received: by 2002:a0c:aa95:0:b0:68d:3d7:616e with SMTP id f21-20020a0caa95000000b0068d03d7616emr1890352qvb.10.1707898937521;
        Wed, 14 Feb 2024 00:22:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707898937; cv=none;
        d=google.com; s=arc-20160816;
        b=t+FamhrUjWv9zNFPaMWoDQhQz0/zWESxTm8j8l9IN0lKfYOiicbOUjGu1d/Xni9t2Y
         UDkmFsII8IiYFs0EHP658cnPdTpm/qFUH+GQ+Nwws0VYtSVVD+CGVaITKhFkYSTbjEde
         pKSVef2RwJGVVv+t0i3h5I0jCDDbdUGH7HjBymx8MjYua3KxXn4ujYXxhmuMRQZC+drE
         0PMpNFBArzZk7+Zu9I0VOFKrSSCN2K5UD2Rm8EP9R+sh5X3ucfscZz3rgeTkBotYMSn7
         D6bFSv/9ud0ET5BV+hY3Afzf2ORpdNZcBJ7IEmoygaXl/AAswUpGBfiATwHLPF4/uz9C
         pemQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=4GCkGvt4nZhsWRQevD4pRqtdRoTxK5OMMsZGrpbXr1c=;
        fh=CEr+CtZfuoMtEmklHnfQkCNCcIzjV6Qv5uXNly7N6tM=;
        b=mqPhO5aORNlXvrszI89re37NEcW3yab5VsVz5opPwhOfuPPPt5G13Ror7XdxFt/KBO
         Y2y3M0JDW2bm5SYRNEoTWOOs0dvVa59Tkw34Qp5Qpct2s6W7HO0TywOad3lureBq3B8B
         aBLxNwTKPRaiXQilBPKAO4X+19DuSL+DDFG9dul8xDmvdbB/4rHHx9FFizX7r3E3RPAQ
         SoQd/kIR0OYp5qrDrdiIJeJcLOd4NXexJ9ejHgFeUoyTtVg+LTK5FjPTBDChwJG7KhR0
         nxZ6PZdvBsVfh88h/wB13tkWm1zmZQ1u15MCVL+cf3DwlorAchLKXHFrMpPCbCicDN9k
         Ro+w==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Forwarded-Encrypted: i=1; AJvYcCWV7djuxHHzTcfOXtgtQs2eZpQheGGbpyzA4TkZ/z1fJuOrZoQGudRyAF1GtGr7vZRgKJvj55RJVrEj5tTJPfkI8CYSiRdRvNYdvim5
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id iv11-20020ad45ceb000000b0068cbf72c8ecsi4887893qvb.486.2024.02.14.00.22.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Feb 2024 00:22:17 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-28-9QgMHDvnN2u_y1jk4LWUKw-1; Wed,
 14 Feb 2024 03:22:15 -0500
X-MC-Unique: 9QgMHDvnN2u_y1jk4LWUKw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 49DB41C05ABB
	for <blinux-list@gapps.redhat.com>; Wed, 14 Feb 2024 08:22:15 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 46FDEC185C1; Wed, 14 Feb 2024 08:22:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 189E3C185C0
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 08:22:14 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C1A7885A58C
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 08:22:14 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-574-ixT7Ygi0MJaIE9xNcfvZaQ-1; Wed,
 14 Feb 2024 03:22:12 -0500
X-MC-Unique: ixT7Ygi0MJaIE9xNcfvZaQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4TZWQD2L7mzmSf;
	Wed, 14 Feb 2024 03:22:12 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4TZWQD20sPzcbc; Wed, 14 Feb 2024 03:22:12 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4TZWQD1y2CzcbC;
	Wed, 14 Feb 2024 03:22:12 -0500 (EST)
Date: Wed, 14 Feb 2024 03:22:12 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: ssh command line question?
In-Reply-To: <Pine.LNX.4.64.2402140028230.706690@users.shellworld.net>
Message-ID: <0320719e-de90-e7e7-92d9-ebf20501332d@panix.com>
References: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net> <e9d53acd-f2af-7dfd-c719-2ea3f7fc5f85@panix.com> <Pine.LNX.4.64.2402140028230.706690@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
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

ssh-keygen -R hostname
uppercase that r and then it works.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 14 Feb 2024, Karen Lewellen wrote:

> Jude,
> I have a question.
> i did run your command
> ssh-keygen -r hostname.
> Listed several keys associated.
> However the new attempt did not let me save the new host, I have seen this
> message.
> Instead I get the error
> hostname key has changed and you have requested strict checking.
> I am paraphrasing.
> Is there a way to run the ssh-keygen or ssh command without the strict
> checking request so the new one can be saved?
> Indeed things are in the known_host file as Chime suggested.
> Worst case, I suppose? I can  open known_hosts in nano, which defaults to the
> bottom, and put the key there..but dreamhost will have to provide that.
> Thanks,
> Karen
>
>
>
> On Tue, 13 Feb 2024, Jude DaShiell wrote:
>
> > First delete the outdated key since it won't work any longer, then login
> > again and a new key will be added for you by the external server.
> > ssh-keygen -r hostname
> > should get that first task done.
> > When you log in without a key you'll be asked if you want to trust the
> > system and your answer is yes.
> > That adds the new key and you're on your way.
> >
> >
> > --
> > Jude <jdashiel at panix dot com>
> > "There are four boxes to be used in defense of liberty:
> > soap, ballot, jury, and ammo.
> > Please use in that order."
> > Ed Howdershelt 1940.
> >
> > On Tue, 13 Feb 2024, Karen Lewellen wrote:
> >
> >> Hi all,
> >> Will aim to keep this simple.
> >> is there an option with ssh from the command line that allows you to update
> >> new keys for the known host list?
> >> I ssh into my dreamhost office workspace from shellworld, as in
> >> ssh email@email.thingy.
> >> I provide the password, reaching the dreamhost shell structure for the
> >> domains
> >> they host  on behalf of my employer.
> >> dreamhost moved our services to a new server, changing our ip address, not
> >> an
> >> issue, but also changing the fingertip keys <hope that is the correct term,
> >> previously saved  for my access from shellworld..who seems to use a strict
> >> matching process of some kind.
> >> My hope? is that there is an option that tells ssh to update the
> >> identifiers
> >> used for known hosts?
> >>
> >> Thanks,
> >> Kare
> >>
> >>
> >>
> >
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

