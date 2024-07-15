Return-Path: <blinux-list+bncBCVPTHE7K4IJPUOVWQDBUBDKPLKJK@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mail.lfdr.de (Postfix) with ESMTPS id B404C931A38
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 20:21:15 +0200 (CEST)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-490150aae6asf1892542137.1
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 11:21:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721067672; cv=pass;
        d=google.com; s=arc-20160816;
        b=ksVKTpJExBEM2inPjq83lhqSuTE3MgydS6NxzNQWRcXrK6pNst2JAB17q8x5rAKRPH
         pvNki/3VzlPt6FW20AegswFgsd7vzidTuhHTM5E3hinFF7I/VoLjvXp0bhGIPrt9XPpp
         7zt97sIxgWFYmA2neHR71u5s5rd6E8B3weEO6daciukwyb2WWTiM9jZwakLqI7RhTY2C
         CsrVUqqCQJ04ziTmlPaSHDzCPk+IHWS2T3a9X7C+3SyrPRVPJyb2o8gmED4UzqXOUQfz
         QfY5z3iQQnSNkHIBwGeZMziyiO67MNzcDW2Ly3eN2bVJK5UIrQmMKmoqO09qNQpNG0+7
         NcMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=kxF/Q3GDq5i7qvNUYIECGdTrZKKCcxmUt+mksApX+ic=;
        fh=EZv0fFZG5ygNMOrHsjiBeYVYwsTav/cDsjzWAsQvt5c=;
        b=KSQ8/TSl9Bifss0nFb45kLzuWd0kT/1rClgErsUJKsrVwsQBNz5y5BA1569PHG5RAY
         pl0yHFCdPxcnylBQYD3MdfTlHLmtv6gpR3VKkCRMMlqLPu3MWzVfA+pdZ/11AmcNbAPB
         dvWV4FlYD9II4h6rrIzYFFU5D9MZ5yf35l7y2ErtXtLmH9/mdaF1bqnvxFUtui+llZM0
         rwJPxYN0EggIy5UhQsidZs9ZZJA8npWfBSyYKptrffSYHET6858VHKdNFB9RTMfSD5Hi
         iG1CwZ9NNIyyCZUpjKwfMI+BeFRiUu2YCb9K7J9TUrwgM9L6ICeggQ6+VdcsIXfeKziq
         MjnQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721067672; x=1721672472;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kxF/Q3GDq5i7qvNUYIECGdTrZKKCcxmUt+mksApX+ic=;
        b=xLuVaIm+7kQwBSpKWiz+nkC9pNM2iYdDP+PGfmAYW3W206tkpBLzOW95x8o/80D02Z
         9boWNYfxIGCnKp2BAGI4eRadmQRQ0oduhuk0R1cCiI11yAtvUZDWMKNqoBC1DZ7p6w5I
         4vSxnws1EGcxb9vw/7Fxmy1sDx0m232kHiWQDsGIpMYq0zf80JzM5SGWEfpWvywubJa6
         LkEWrC02SBDbuZdptJy+EVRmjzJdZO/fD72rFB64mJY9pyeKQ7k91I6lmlyXLrBCt4yg
         EkXYdpw0zfSjBAVZ3ukeX5XLGUE20oQeT0Aj3mPXAIhvWphW2KwHACWK5TclQQrazH0W
         XQQQ==
X-Forwarded-Encrypted: i=2; AJvYcCUabhOXlIa0wRYRyFqBYGEueorsqi0Hfbb537/eHw6LMMcRvmZCtB6GNWLRssUZLJzGUYFCgCEvOGD+AbAE0eAUR9br5P24v1Fa
X-Gm-Message-State: AOJu0YzjFcRROLkb5D+Rwli12aVmhFo37kljoOYCvCkSUkZEi2JbSd/0
	7/FlIlnxNgV39g4uU9KXFry5czSkLHR/Qb6lqUYrSixqPAG+sGEKAhqJktZbkc0=
X-Google-Smtp-Source: AGHT+IFYLBnqWWhJO0uElOtPgm1qmUZET0jrYa/x5fgrcI77fUt07nVR99iqlpNfjnfGiegjLOr+kA==
X-Received: by 2002:a05:6102:5e8e:b0:48f:df86:db3 with SMTP id ada2fe7eead31-49149a71558mr962176137.3.1721067672154;
        Mon, 15 Jul 2024 11:21:12 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:8183:b0:444:b691:8723 with SMTP id
 d75a77b69052e-44d080a70b1ls66352371cf.1.-pod-prod-09-us; Mon, 15 Jul 2024
 11:21:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXA5NBRZ6NUFyld+fboOwJOPY7aMXeRJ9TGYuhIRik24yomSNmLrOjJy9ox+Nv0McRjjFlBBCTu5LP0YUKCEioSjbdhVlpq560lTiy2
X-Received: by 2002:ac8:5785:0:b0:447:e60c:628 with SMTP id d75a77b69052e-44f7acbf33bmr197311cf.51.1721067671272;
        Mon, 15 Jul 2024 11:21:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721067671; cv=none;
        d=google.com; s=arc-20160816;
        b=Y+cTdaZf92h6a0x+uJInBkrRzj8jsWRjeemUrIxoGknX99Oq72wvh7bUTJtydXHz3J
         7gLUPEVmXB0hE8FtyY6SWY3Eujpu2FUN/WmYXf9DS6Me3A0ikBc3H/LAjawJdaLu57AQ
         AYnDv1qtOXmsQuXKyRXIAEoDpg0YrkRXB4KpEqKjQFj8OyTC96+YaW9Lipw+6SbS766v
         l4hH4tS8KfEDPgYhKutSA1Nxwml9JEln/CyqLac6KvHl2LUntejcjl3/CRi4ScMV82+O
         8fDjZQmvhYpbWCwbrxUf+nV1ehJl/trlfsx9ScWy1EaYhwHtXjNMPzNyK4d9t1p3Aod5
         q0Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=kxF/Q3GDq5i7qvNUYIECGdTrZKKCcxmUt+mksApX+ic=;
        fh=fQue1LVswyroBUi493FuNRGs2h1etDPzgwP/d0K1aSw=;
        b=lF5cr++12Tg9Y80Kac7VgvdQzItDWbWY2Uilwk6de5oR58Q6uV5vGwM+XzNuoynlGS
         isUkVPPlM3SoOq/DmwlCuljcQ8HO2NuQc4sV0oi7I+saBrMFBt2akT3vMVhBZjbaZEks
         RbQvgjwxxFWeem7PL2EiCXkctQZmbqS9f0+IQrYJuy6/+EH4QrMkpEetXizj9G05YRa6
         UdauYIqf/x4B8VNJhW2u2fAj245SV3GHCCsq4ydIP1ub8Aag2feOPAZNr8l4s5zZLE1Q
         +AA19NqDa/taFMmULK8H7HvAfSYdklKzEQZTfm9H5YHli/wIyarWpDB0Hd/AcWafh36T
         IC5g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-44f5b804b93si56118771cf.399.2024.07.15.11.21.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 11:21:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-468-I7R4guXwNyK1p14TujyU8Q-1; Mon,
 15 Jul 2024 14:21:09 -0400
X-MC-Unique: I7R4guXwNyK1p14TujyU8Q-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A81691955D42
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 18:21:08 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9959B1955D45; Mon, 15 Jul 2024 18:21:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 96D371955D42
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:21:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 172261955D48
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:21:08 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-458-WBk2_VyEPzeSUilcxuqyNQ-1; Mon,
 15 Jul 2024 14:21:05 -0400
X-MC-Unique: WBk2_VyEPzeSUilcxuqyNQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id DA6F240508;
	Mon, 15 Jul 2024 14:21:04 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 9C8E31001B4; Mon, 15 Jul 2024 14:21:04 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 9C2891001B0;
	Mon, 15 Jul 2024 14:21:04 -0400 (EDT)
Date: Mon, 15 Jul 2024 14:21:04 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
In-Reply-To: <c9f7d2a9-5da2-1cde-7cfc-a1ccd83d2128@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2407151419440.3548142@users.shellworld.net>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
 <c9f7d2a9-5da2-1cde-7cfc-a1ccd83d2128@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
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

will give that a try.  Any way y to write the results to a file?
With appreciation,
Karen



On Mon, 15 Jul 2024, Chime Hart wrote:

> Well, Karen, last I knew in bash, you can hit escape 4 consecutive 
> times-and-it will ask if you would like to see a number of packages? It 
> actually tells how many. In my TCSH the 2nd press of escape beeps-and-begins 
> mentioning files in my home directory.
> Chime
>
>
>

