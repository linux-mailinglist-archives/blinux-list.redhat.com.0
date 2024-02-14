Return-Path: <blinux-list+bncBCVPTHE7K4IPNVNQVYDBUBH4SHWKE@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE988541A4
	for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 03:52:40 +0100 (CET)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-785ca954308sf436358485a.0
        for <lists+blinux-list@lfdr.de>; Tue, 13 Feb 2024 18:52:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707879159; cv=pass;
        d=google.com; s=arc-20160816;
        b=CEON4aUh/fPS2p4wUSRn9r0EzggGsTH62AVMifydQZ64awUP9qNmG9TjhpF6JFUuT9
         6j6Fv/oGNHyr4nXSdES2Q/Y8litKTr8M7NWNdvVVFTb1SJzjR222LiePWccq9JfaRASs
         EHuea7ocMxW+aBVjObTLsvQSkkGc505zWuYc2LKDaDu/ToIFAPesLE0jcroweKQCNY2G
         vTCh+qpDs3TOXzVU7uWT3DONPYt2B60wOGbnT6DD+1JgYV7/43B5568F7egYnyZeOdq2
         tdVlEsOANel8BFX9Dsucv/TDo2nXccaPYJzr3P4c5ICBCpigIkEUGoYIMdl7RkfLaic0
         J0kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=54OnPmWx8O//MTNM1M57oCTq+ptO00Has2InFBhIyB8=;
        fh=tx5ktEpCCJyiMZ2zN9ICZeA7V+4IF+qazc9UPA/oII4=;
        b=phf82Tt4EMICwr1I5zun9rf2RwsOOSr9Abo6N7M0VebbJuSUzpnbQ/3MRMFrp6NDka
         nvRuGVVsxrKhjqJDAL+K+t1Uh6q2iXJDt1jDeyuUY4DIv7mfxa2G8gTqP1t2mfTRmuCR
         a50CTdLL3oLvUnakWouoXdfAbq4l4mU4MRZeyDBazoZ+c8iVfWgLI1SAMANuL3r3jFRn
         MS5G3LguRlSSJm98/gfuEOUVEihFHyD609rh/DKjuKw2+Mh/SHkIdG73Yik+E1HvRv/O
         4nsMtbmCYfXd4N8M8CJYXSr8r3keABRkznwfU++1mAGFMxWcsbb6xJq4as5xWgBj0a1q
         OrHw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707879159; x=1708483959;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=54OnPmWx8O//MTNM1M57oCTq+ptO00Has2InFBhIyB8=;
        b=W8cS4HGQhcnlQ37Eou9EhhOiMA0jH27lt1EaLmyG5scazwSw3UGQKMK5nRMSrR656L
         T25BhZBCgITYKAgKD11U27VP7Mo1QCEXS5KhfJeY+T7TzmauloQ+WT1RIWQAjvR6vmbC
         TRdvZu/YL1y4hx677uNDU6bh17Zso2WhJ1+GQ46RTee1ncEOzvIi7iT+BEVTvQWK2Zvk
         M7CydbIDiy72z0bOzr7Qw3RnxZa4Q+hWLyBhgopxpQIt1xbwIUVYAE5XI32IPMwPVP8A
         MD4KJ1iv4Lf81LWrqLf/yw8FcMsD/RB1lkO8mCMiEwK7QOUcOERd82TYRQnPAwfX/rL0
         /FWg==
X-Forwarded-Encrypted: i=2; AJvYcCXfuKlBLECHE9B+5cZ3n9ef5b7ub6kgmqGrbXaMCLAZ7M6D1mJwbr1iwsKSKBEZ0mkipFv7paj+DbqG9xDao5r2Fn7cHGTScFmY
X-Gm-Message-State: AOJu0YzJy3JtjqSgj/zjF2gX02xgQhL+mcj8fMkRNxVtZr3Ugr5VDlXm
	PqXrqbNF5SCwB6FzyO7Ay/NkJAJuDTQa5Vre8ysMX6BVvWN7PESJ7NKb67/VtOc=
X-Google-Smtp-Source: AGHT+IFIqWlpyKoN8PeGY+3Mppjhh9S9hXzrZUI8f5yzSA45idSxLSRlQ0MyYsgzpMr9j3aOuiiz8Q==
X-Received: by 2002:a05:620a:1113:b0:785:8c17:dfa3 with SMTP id o19-20020a05620a111300b007858c17dfa3mr1537660qkk.40.1707879158973;
        Tue, 13 Feb 2024 18:52:38 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1305:b0:42c:573c:2b0c with SMTP id
 v5-20020a05622a130500b0042c573c2b0cls1409527qtk.2.-pod-prod-09-us; Tue, 13
 Feb 2024 18:52:38 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWN7BI0FQIENx1HRJMirJRIR154jn88h+CRLd2KE3dhIoJZzPsOO+bJPuqFuPKm4i4/G2LjEOSBRjYEFwqkwNYa71E4seVRXlqYHIO8
X-Received: by 2002:a05:620a:178b:b0:787:2b5a:31b0 with SMTP id ay11-20020a05620a178b00b007872b5a31b0mr438710qkb.71.1707879158309;
        Tue, 13 Feb 2024 18:52:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707879158; cv=none;
        d=google.com; s=arc-20160816;
        b=vUdxwewV+e5C34NougC53rEJH+Hc5ZsTINpmyMUVqA1UL/EoVtH7YA9H8cccYyS3Mt
         2v2CqTTKti4bQz0ACWUD2FFlyHuuB2UBVpKW1nuRAw8iTL5Uzbyw8VE5BDHeQ1g61H5S
         LZcHCy78iMXRbH13mNj+vm6WKbwqNsFCwU2LwM5ts+xSnk4menXS97KjY48e3Y7Jyhyx
         M9UxcqHlHm+Zl6RVTQIA7zVi0iPRgJdnKmm15/cYzLsMJB2sh9S2RjWi2qOMFqGdqRCg
         fp0qSFFAAUFNBSNsC02EMuphtAMHzyhj2tgb3EPZYKZGfDnhsX1csf2Wv8ny6s7iT0LD
         vbhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=54OnPmWx8O//MTNM1M57oCTq+ptO00Has2InFBhIyB8=;
        fh=7Z+fpfCxLhFTnrBNU9fPocSunkUih3PnGM653sAgXhQ=;
        b=h+l6XoxrZoqvclDelOfnhlGqvi2rY2K4fbdbs+sBGNKWRodgcnp1hooRtAMpayn2BS
         RrtD324uVD45O4s2RBeba/JFFpH27niqPIW+sldUnOiq2LFKKqpVYWZK/N2LPg34dx0O
         C8SzkYoIluCu4EF5UHSdXx1C9l8udd4MLWfy/huWHr1OazZXAhrFMtxHACpHgk4/HsTC
         iWcBzZXDR84UunSN6qwoSPpJ9SeUaqtH0MxI/Y1+41bVzMYDE2gqIcLC1KB7WM3pWgyA
         D4YrAEFDaeh2BKyE4nbxzCNXDzjfTjjZBHVAJw9t4P3GQNbqycEC0IvfAnTI0Jcv6UPI
         231w==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Forwarded-Encrypted: i=1; AJvYcCUG01R9Dp14zt04yN8YOHJUFi8Q7HYRN2LO4eutwv20cPGksVH6VRb3day3cxiAGIeilFPLZMKJbT6JdSr1oP2dDn44Oc8DExz0iH/w
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id j13-20020a05620a146d00b00787154287ecsi4087262qkl.430.2024.02.13.18.52.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 18:52:38 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-424-fsFREhi3NEu9vN3VWC0KoA-1; Tue, 13 Feb 2024 21:52:36 -0500
X-MC-Unique: fsFREhi3NEu9vN3VWC0KoA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7DA1A811E81
	for <blinux-list@gapps.redhat.com>; Wed, 14 Feb 2024 02:52:36 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 790B3400DEEC; Wed, 14 Feb 2024 02:52:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 40EE840C9444
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 02:52:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD7D338143B2
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 02:52:35 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-130-UY1fKkqFP2OIZxp2mYfS2A-1; Tue,
 13 Feb 2024 21:52:33 -0500
X-MC-Unique: UY1fKkqFP2OIZxp2mYfS2A-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 4D42440508;
	Tue, 13 Feb 2024 21:52:33 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 180811001AD; Tue, 13 Feb 2024 21:52:33 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 179AC1000B6;
	Tue, 13 Feb 2024 21:52:33 -0500 (EST)
Date: Tue, 13 Feb 2024 21:52:33 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: ssh  command line question?
In-Reply-To: <5c7007d6-dc29-7872-7fb9-d4d7224ac1ce@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2402132148040.704913@users.shellworld.net>
References: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net>
 <5c7007d6-dc29-7872-7fb9-d4d7224ac1ce@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
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

Hi chime,
If I follow, from my shellworld home I would  type
cd .ssh
  and load, in nano? a file called  know host?
with a space?
My guess, if it loads in an editor is to use a search field specifically 
for  my work related hosts, to keep the process simple.
Does that make sense?
If I am honest, the risk you speak of is the very reason why I do not like 
to  mess with stuff at a service, at all.
Kare



On Tue, 13 Feb 2024, Chime Hart wrote:

> Hi Karen: While I am not aware of a commandline option, but I bet there is, 
> what I would do is to cd over to dot ssh and delete the specifc item which 
> you would like to change. I think after that, when you ssh in there, it will 
> prompt for adding that kee. And I just checked to make sure, known hosts is a 
> file, but certainly that file will not read well. At the very least, I would 
> make another copy before plunging in.
> Chime
>
>
>

