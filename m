Return-Path: <blinux-list+bncBDYPVTOXSQEBBRXPWGXAMGQELXOQAKY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3D68543F4
	for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 09:20:24 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-68ee2b55769sf22007706d6.2
        for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 00:20:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707898823; cv=pass;
        d=google.com; s=arc-20160816;
        b=013Dqz67hKY8m5upmi2olD9ih0i846HZf6L4bwi58zcYZpDeQgZuiZrNz025QdYwC3
         uCjNPZ9k+L2WIbrqT8rrxu+FK0Sa43kgLp9QSFnbIuAC+2FJDjHXKZpFGf6POzH6zy5G
         s1aesj5M9vJLQMtPXxiqLlfUo8yK/C2ec9Nir83vJJ1dfqLbanshvKn4la9TJpO8yelG
         dAfgRWBZHf21Bvb8Op0sgeRnDePzv4TxdA4CmiaDzA7XuuQ8dJHx+1CxYJ/bNId92T/t
         M4SIWDfAEE6PNnS4XLl0M48HS4dIztGim6wsj+Zaql7oi3OlFeJkZ5L8RfbVf74KWSDE
         P1Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=x9a0jqJ9G1+Fcp4VS3+cT+8ZmJ8FFTKBUfY7mcBoEgQ=;
        fh=rUEydgsDtChOGCKBPywGzT60ngA73KLCP9FTNSePqu4=;
        b=FpUTDiQmDV2gLo24djj0dHzYyzHovWjRjAtyHK6HjlHAsqHvvTim9khvvaFuY3gMU4
         +UpS0DQCa8IWuxyG+bbD3sVhsbDRnJTtQgaeEODR80Ufti0mE4FMXczw9ekGNOgamr3U
         NgnXXkVsq4JzeEUU3H5+qfHbnOoNsz7X94QHCr455tnpkaGc5fVXFHABhWiCEzrNO5+e
         zLhPd2z8MKqr+zEs/SeypGa/L8jHmbR+6ZAoYuDHxAnfNXICmjLS627waUtlQ491bXvf
         udPz+74frFM1tE97Y5282Rj56IjPcYpISBDI9AvyTAyK7XOCyE1fPd6CknHEcr5vKefd
         FphA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707898823; x=1708503623;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x9a0jqJ9G1+Fcp4VS3+cT+8ZmJ8FFTKBUfY7mcBoEgQ=;
        b=nQHOrNoZ4uLXoOkvj/UtVjGJzkSXfAFjVfrpPnhrP07Jr5SDrTetlcXpOF1n7VfKpT
         vmTADtWQ74JWCPceqg6mzosHyesqGaxfmG/yHtMH64Q3RWpSpWJMMFxuxSZQ7fRc7IdE
         w8P7RTiQHAzUcu/0fb9RZWvsgJJ3RFTpTlkrvIm57IugWb1EhCqc00MLADRg/vHjdXru
         pJWS5Z7oHitRmXTPPLZN2CvZHf9SIio9p1Yj+KEarN0pmG66sQtFV+871iFCIEZuqHhe
         TXdxOuOoUqslQdxVdpT+xMwzuAnUoa/Cv4IXyoQKdGz5NLV2Nd08Wdps4ONYySQKJyqM
         /L4Q==
X-Forwarded-Encrypted: i=2; AJvYcCWmi7gYyx7klFicGz7wxB6D+l7MrXtIkScNZnPWAYSix9O1dmDIVyU5BFry+W8HiQO/Ly7v65OX8qgq+JNk2Ie/61xnzHXFUex9
X-Gm-Message-State: AOJu0Yxp4E0q4rwqyu7mBoBYINWWXPSf+Psio/uHSEOwojui+9Rl+3Z6
	ffdIIUlxyS6SMqIdh1kXtTugUdHjs9PPdviRPYuCH+n5+zDgBybZPkvfJ/erQas=
X-Google-Smtp-Source: AGHT+IFXSDIAVMhX3rZ+iyj4CEpdGkToLmxqtI5gZLnBt5r9q63HRRoL3ZVRaDYLWSH+k9duUk0gJg==
X-Received: by 2002:a05:6214:20ad:b0:68c:9cb7:b190 with SMTP id 13-20020a05621420ad00b0068c9cb7b190mr2180373qvd.54.1707898823024;
        Wed, 14 Feb 2024 00:20:23 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5bc4:0:b0:681:6cda:84f6 with SMTP id t4-20020ad45bc4000000b006816cda84f6ls1777829qvt.0.-pod-prod-07-us;
 Wed, 14 Feb 2024 00:20:22 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXdCpgHVb1BiqbPayobXkg7C7j6O2kesIPLSjpCmSAr73F2lB0edikwWlxZ2gff0wA3u5c5Rh5Q7eOkE7R0EyJbBNAvfmOE4cNsNhmB
X-Received: by 2002:a05:620a:178f:b0:787:28c3:ae44 with SMTP id ay15-20020a05620a178f00b0078728c3ae44mr1763071qkb.22.1707898822137;
        Wed, 14 Feb 2024 00:20:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707898822; cv=none;
        d=google.com; s=arc-20160816;
        b=ZlcHemAY6H5dD+z2EE4lwv6D+mROnhDFA/3WQXG8IWr8lzKShXsfxzNXh2lOloERq6
         L7VmdRqVWhrB7EthbJRUvptgVEcOSuqzBxBxQuXxCfDp7HIG1NAgqKMFEk1IIYCEuhZR
         GDQ7+ygCdnRf72taL3m77aP12qBIFLUFkS3QFQGbdXINajbbPf4E+X1VhUsiMoKQnW0J
         ItBoqf5ZB2TvBQ92jLV1QO+CmvzVg/+ffEstJMYo6zKxCE5/lmRTudLQBhpwGhTux0K4
         vKJOqE13iiOJ3K3wcDSSy9xsIvIu+9QohVhUPsLPLghRHolW1in0nRDSNWPB2JxI0x0y
         TRbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=bgeV8JmDWkPNn2BnWCM1wTLCKtNHtFucSpmVwKK5aWk=;
        fh=44lrRWWUWmRMUoCdgG55yd79fYrXaxqDv5Dc+FBMtJ8=;
        b=MYoHIhWH+6waVLRyCQALGb08PMyvs8ok60RVnp6cTGi5iqj9pZT7ccI/Hh/8cqOwmV
         725Lm4h3EWI73eNbWO5nDLOCukaDpm3HyMGzZURCGMneYfwunaHajXKlwTqE9iqe3ETE
         y4dLJlnh1mHdxrI2Ji753IBE8eRaD9J2E2WAhJgo/875Ia279T5wgxrsbEiZ+Pt0baCl
         WKozK1E+GLEaBL8p93bFogehAuVsXaMD5jmlsI5C5LXGI/wwWDCGbuzFegRJmDKtQRnT
         HEpCPWfqi08SA+LBVeow57mShNHv3x3gkm30Cm9UOeGa4tQahyTg0zz2bHAC5yiY3KM/
         Y9PA==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Forwarded-Encrypted: i=1; AJvYcCV2gUmL+wXxMyAU3/G0zRtjSq493kfmNPpouTvei8bEXo5+A9FD8GetC41UPUtI+b+BZyI8z97LHUQuC2tv7oUVyDQd5MjCkKIWcuBv
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id n21-20020a05620a295500b00785bfe14653si2040452qkp.187.2024.02.14.00.20.22
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Feb 2024 00:20:22 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-523-gTQAXxdtNm-sA2-6n5Ifgg-1; Wed, 14 Feb 2024 03:20:20 -0500
X-MC-Unique: gTQAXxdtNm-sA2-6n5Ifgg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7CC9F185A780
	for <blinux-list@gapps.redhat.com>; Wed, 14 Feb 2024 08:20:20 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 793968CED; Wed, 14 Feb 2024 08:20:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A8008077
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 08:20:20 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA6693C0C102
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 08:20:19 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-150-qv2PWcnlMQSwqJrlW7LvNw-1; Wed,
 14 Feb 2024 03:20:15 -0500
X-MC-Unique: qv2PWcnlMQSwqJrlW7LvNw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4TZWMx5lFxzmwK;
	Wed, 14 Feb 2024 03:20:13 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4TZWMx5Lzwzcbc; Wed, 14 Feb 2024 03:20:13 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4TZWMx5FQpzcbC;
	Wed, 14 Feb 2024 03:20:13 -0500 (EST)
Date: Wed, 14 Feb 2024 03:20:13 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: ssh command line question?
In-Reply-To: <Pine.LNX.4.64.2402140101510.707021@users.shellworld.net>
Message-ID: <64a1d2a2-6834-3cfb-14ec-bbdd9bbe1f48@panix.com>
References: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net> <e9d53acd-f2af-7dfd-c719-2ea3f7fc5f85@panix.com> <Pine.LNX.4.64.2402140101510.707021@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
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

Best not used for security reasons.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 14 Feb 2024, Karen Lewellen wrote:

> One more quick question after I just did a search.
> There seems to be a command line option that turns off strict host key
> checking.
> Where do options go for ssh?
> or should I run that command with  ssh-keygen instead?
> if so,  what is the syntax?
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

