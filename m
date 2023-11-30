Return-Path: <blinux-list+bncBDYPVTOXSQEBBL63UCVQMGQEYBHKAOY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 601397FE93A
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 07:37:36 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41e1d05a5d7sf6996601cf.2
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 22:37:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701326255; cv=pass;
        d=google.com; s=arc-20160816;
        b=gLXDMv5dKIOTMdjL/wzL2Kz5tdbfCHj90yT/6Mad1vIR8PTPeBnjW5ic7ZWTd6d5Tz
         3LqpK3OX7F+DzE6pOGzJPre0tLso4U8E+kylaVWcNISyNf7LZ1ecgCCcJbRhUyhyo/fq
         D6Waq4J5OSRss7y0YAGZgEsmOf+q8983MI26cpDghwW8qfzvCdiylEmT7fpDpD5UAqQ4
         p0+0okD/kzpE2b/416QZGkkxPOs3jmVXF1UmnoaMkRYyfxHJIn8wtHLRDx11358qbG6T
         t5eB0b6ysdm5vAnLuO2gkKACGwH270zPEtwZGnmNWbxDeNr0kxTqccd3S2JVYRWpb3Ty
         eIHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=NAusIptQtJ8GYN3RwHW7UCKpxrOHVZfS8AtQ+AlDJyw=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=d83llc9gr+13GPcNW3Bp30rOM0i3btrf7yS8C84o7A8qr485Qqtl7SfbOnsQjAPAd/
         SjO7wZjpODAC/KnIET8fcaiabjeIeEp2XOsgejGhWWEaCokcXAz16B2KuxCwM7zHFrZb
         os5szhG7TVFQB50rsU+5urf+FimyJ+NYdw+VEQNsgWu9Bt4G0wbF177RDmAH+BZHrl+5
         Y3PloJXhE8uVyzpGg5Oca8hyUe6UV7vMkEKmzgmp/B0bhqd2xtun0LPPGRCHFairFJCF
         vJ3DVayTP7Soi0MyHUsUV/oTXtMHmfJpUAYKJj+Lnfun6GeixLebkp6/toMsraUNaP39
         uuCQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701326255; x=1701931055;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NAusIptQtJ8GYN3RwHW7UCKpxrOHVZfS8AtQ+AlDJyw=;
        b=s/mUUmwXKAGDZRbBELrwi8n7EzT4p90SVwg0Dj24DC2QKpe92qp+es2LWnGfDFzyZT
         6BreEuDaSgxNBcLynwMSTxCyMUswgl50xWX5GUBx0DrLBKpGmZefxbOxx0rmhaeYdemZ
         X/pLAAFRr7mcuyRHoyhADBth7GzeKASvq6nRmzXXBedY9CqMZ4w0Y+Uz4HpaQKI3eCJv
         9XHknRZU3fx/ENpzawXBBoIhH9frneuXvubg6kbVuM9miAieUOGAL4PIYMqrjaiFDpDE
         TgintzUI3UTP3MLGk3yrX06fc5RpWl1N7csLDzRqUM833ZUyfRCQpUJDhu7LeSOR92tt
         bRew==
X-Gm-Message-State: AOJu0YwEfstWotEukOtB4acCndCdZBsevf/qP8R3Z175d38FWoFxpyjq
	5JfSxNdYQww7x+fJTXogOcW2yw==
X-Google-Smtp-Source: AGHT+IHmUVW+UzRybClfv5I+LeQpD9n5SeCTbslDOPTAtZSYY1pskrbYxglds4mYl19Si/qdv3V5wg==
X-Received: by 2002:ac8:7d12:0:b0:423:7d3c:fa97 with SMTP id g18-20020ac87d12000000b004237d3cfa97mr18627187qtb.67.1701326255273;
        Wed, 29 Nov 2023 22:37:35 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5d01:0:b0:423:72b2:6135 with SMTP id f1-20020ac85d01000000b0042372b26135ls795759qtx.1.-pod-prod-08-us;
 Wed, 29 Nov 2023 22:37:34 -0800 (PST)
X-Received: by 2002:a05:620a:3f8d:b0:77d:7840:c982 with SMTP id va13-20020a05620a3f8d00b0077d7840c982mr17346071qkn.77.1701326254505;
        Wed, 29 Nov 2023 22:37:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701326254; cv=none;
        d=google.com; s=arc-20160816;
        b=e4qdGVr5+YAQjD1pOSk9dWMiu94HxGQyaSZXiORJJbzeO4NzFS4yQtlowkRu1yxBM9
         gjxGDLLZPY5/nPeJwwZVa9CZHcFvQNfcC16hecvaebjoBIvm5lg1gGYv+3y8EgXdVcw6
         RG4eTM9+/rbA+qgHpPm5uPuCoxSIUeCcWfwxUylTBLPdtvJ5FlurHKgXkZis2enZFD8a
         UD2DlXeuig1JWjF7sX5x6eIDJ/g50HSMuswB/l7y6L9kQyKTmvlB4iRRP8CCV77Ti8RJ
         SMF2VzbtHDRaI2EuBM0x34xzg+igRAD7XZy0K9ZZsJE1x2KCoimZr6tlOcimeWQDl+h1
         rivg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=hUhwrAX/xj/AwmUlC9fSRnBS5GZ5Gsab2Zd6xste84c=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=StHmvIm00J3537vLYulrtMv03SPl5Bvw9cVke2N9B0vevTAFZAemNCms+JwnYM0WJL
         HTiHodj/72uYStQyeT1cLfzk4xDYtwQN+zfr9UAqVKysmP7YNHT6FpP0K7NTbuIEJSJS
         K16gx4QFCC049Qi3LVPoS8oOXx3OGTmaHjikBdxNOVxsv/j9jkA7jr+8+I/7Ytj8SroD
         7gU9CUdyQCf8bqrQ3pD0gXFjggiIoRiYot1PetxadrcTpVU8YB67SK92etuaEdYIJHED
         BITKUve2GXIJoXpoEUntX883pT8u1N+lQbUt2QtR7eXqSTASNDBngNYZ9WNVCDwBjf+f
         r/HA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id du49-20020a05620a47f100b0077d75093ef3si393607qkb.606.2023.11.29.22.37.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 22:37:34 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-410-BVvNPvFuN4yorj29Iiimeg-1; Thu,
 30 Nov 2023 01:37:33 -0500
X-MC-Unique: BVvNPvFuN4yorj29Iiimeg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E1485382254C
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 06:37:32 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id DE490492BFC; Thu, 30 Nov 2023 06:37:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D76B1492BFA
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 06:37:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7DDDD8007B3
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 06:37:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-202-lwZK5r1UPIaqDfQuySRxbQ-1; Thu,
 30 Nov 2023 01:37:30 -0500
X-MC-Unique: lwZK5r1UPIaqDfQuySRxbQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SgmhV2KhNz4DCk;
	Thu, 30 Nov 2023 01:37:30 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SgmhV23Qbzcbc; Thu, 30 Nov 2023 01:37:30 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SgmhV1zYfzcbC;
	Thu, 30 Nov 2023 01:37:30 -0500 (EST)
Date: Thu, 30 Nov 2023 01:37:30 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <Pine.LNX.4.64.2311292213270.3720159@users.shellworld.net>
Message-ID: <7634f774-0813-cb35-2519-7ceb2e4216af@panix.com>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net> <c9277002-d894-203e-511b-952f27c98048@panix.com> <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net> <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
 <Pine.LNX.4.64.2311292213270.3720159@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
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

With these browsers a command like:
elinks --help|less
makes the command options come up at a more reasonable pace and it's
possible to write a script like mylinks.sh that starts the browser has all
your favorite command line options on the same line and ends with $1 which
takes an url if you type
mylinks <url>
later once you make the script executable.
If you figure out you need more command line options and you know what
those options are, edit the mylinks script again and you don't need to
mess with menus any longer.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 29 Nov 2023, Karen Lewellen wrote:

> And Jude provides the command line option.
> Thanks.
>
>
>
> On Wed, 29 Nov 2023, Jude DaShiell wrote:
>
> > links -html-numbered-links=1 should do that for you.
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
> >> I did say links the chain, you are thinking of l y n x which is not the
> >> same
> >> browser.
> >>
> >>
> >>
> >> On Wed, 29 Nov 2023, Jude DaShiell wrote:
> >>
> >>> There is no keystroke for that.  You can turn that on in options or start
> >>> lynx with lynx -number_fields.
> >>>
> >>>
> >>> --
> >>> Jude <jdashiel at panix dot com>
> >>> "There are four boxes to be used in defense of liberty:
> >>> soap, ballot, jury, and ammo.
> >>> Please use in that order."
> >>> Ed Howdershelt 1940.
> >>>
> >>> On Wed, 29 Nov 2023, Karen Lewellen wrote:
> >>>
> >>>> Hi folks,
> >>>> for those using links the chain, there is a command line option that
> >>>> turns
> >>>> on
> >>>> links are numbered.
> >>>> Can someone remind me of the keystroke?
> >>>> Thanks,
> >>>> Karen
> >>>>
> >>>>
> >>>>
> >>>>
> >>>
> >>> --
> >>> You received this message because you are subscribed to the Google Groups
> >>> "blinux-list@redhat.com" group.
> >>> To unsubscribe from this group and stop receiving emails from it, send an
> >>> email to blinux-list+unsubscribe@redhat.com.
> >>>
> >>>
> >>
> >>
> >
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

